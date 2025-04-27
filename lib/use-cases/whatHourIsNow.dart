class WhatHouIsNowUseCase {
  String WhatHour(){
    final now = DateTime.now();
    return now.hour.toString().padLeft(2, '0');
  }
}