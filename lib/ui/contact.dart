import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:wheathertest/components/generic/build-text.field.dart';
import 'package:wheathertest/components/generic/elevated-button-widget.dart';
import 'package:wheathertest/generated/l10n.dart';

import '../components/flag-selector/BuildFlagSelector.dart';

class ContactFormPage extends StatefulWidget {
  const ContactFormPage({Key? key}) : super(key: key);

  @override
  State<ContactFormPage> createState() => _ContactFormPageState();
}

class _ContactFormPageState extends State<ContactFormPage> {
  final _formKey = GlobalKey<FormState>();
  bool _isButtonEnabled = false;

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  void _checkIfAllFieldsFilled() {
    setState(() {
      _isButtonEnabled =
          _nameController.text.isNotEmpty &&
              _dobController.text.isNotEmpty &&
              _cityController.text.isNotEmpty &&
              _emailController.text.isNotEmpty &&
              _phoneController.text.isNotEmpty;
    });
  }


  Future<void> _selectDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime(2000),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null) {
      setState(() {
        _dobController.text = DateFormat('yyyy-MM-dd').format(picked);
      });
    }
  }

  void _submitForm() {
    if (_formKey.currentState?.validate() ?? false) {
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: Text(S.of(context).formularioenviado),
          content: Text(S.of(context).formularioenviadoexito),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text(S.of(context).aceptar),
            ),
          ],
        ),
      );
    }
  }

  @override
  void initState() {
    _nameController.addListener(_checkIfAllFieldsFilled);
    _dobController.addListener(_checkIfAllFieldsFilled);
    _cityController.addListener(_checkIfAllFieldsFilled);
    _emailController.addListener(_checkIfAllFieldsFilled);
    _phoneController.addListener(_checkIfAllFieldsFilled);
    super.initState();
  }

  @override
  void dispose() {
    _nameController.removeListener(_checkIfAllFieldsFilled);
    _dobController.removeListener(_checkIfAllFieldsFilled);
    _cityController.removeListener(_checkIfAllFieldsFilled);
    _emailController.removeListener(_checkIfAllFieldsFilled);
    _phoneController.removeListener(_checkIfAllFieldsFilled);

    _nameController.dispose();
    _dobController.dispose();
    _cityController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF6DD5FA), Color(0xFF2980B9)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  BuildFlagSeletor(),
                  const SizedBox(height: 50),
                  Text(
                    s.formularioContacto,
                    style: const TextStyle(fontSize: 28, color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 30),
                  BuildTextField(
                    controller: _nameController,
                    label: s.nombre,
                    icon: Icons.person,
                    validator: (value) => value == null || value.isEmpty ? s.nombreRequerido : null,
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: _selectDate,
                    child: AbsorbPointer(
                      child: BuildTextField(
                        controller: _dobController,
                        label: s.fechaNacimiento,
                        icon: Icons.calendar_today,
                        validator: (value) => value == null || value.isEmpty ? s.fechaRequerida : null,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  BuildTextField(
                    controller: _cityController,
                    label: s.ciudad,
                    icon: Icons.location_city,
                    validator: (value) => value == null || value.isEmpty ? s.ciudadRequerida : null,
                  ),
                  const SizedBox(height: 20),
                  BuildTextField(
                    controller: _emailController,
                    label: s.email,
                    icon: Icons.email,
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null || value.isEmpty) return s.emailRequerido;
                      final emailRegex = RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$");
                      return emailRegex.hasMatch(value) ? null : s.emailInvalido;
                    },
                  ),
                  const SizedBox(height: 20),
                  BuildTextField(
                    controller: _phoneController,
                    label: s.telefono,
                    icon: Icons.phone,
                    keyboardType: TextInputType.phone,
                    validator: (value) {
                      if (value == null || value.isEmpty) return s.telefonoRequerido;
                      final phoneRegex = RegExp(r"^\+?[0-9]{7,15}$");
                      return phoneRegex.hasMatch(value) ? null : s.telefonoInvalido;
                    },
                  ),
                  const SizedBox(height: 30),
                  ElevatedButtonWidget(
                    s.enviar,
                    _isButtonEnabled ? _submitForm : null,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
