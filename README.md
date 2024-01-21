# Nasal-Sensor-module
A thermistor based nasal sensor


This is a tool allowing continuous accurate measurement and recording of airflow in each nostril separately.Exploring the nasal cycle unveils a connection with vital physiological measures—heart rate, blood pressure, temperature, glucose levels, intraocular pressure, blink rate, metabolic rate, and oxygen consumption. Serving as an intricate indicator of autonomic arousal and offering insights into brain function asymmetry, the nasal cycle becomes a captivating avenue for monitoring internal body cycles and potential markers for diseases.I implemented a system utilizing a thermistor interfaced with an Atmega microcontroller to capture real-time breathing signals. These signals were then transmitted to a mobile application for immediate monitoring. Subsequently, I conducted in-depth analysis using MATLAB to derive valuable insights from the acquired data.The Nasal Sensor Module is designed to provide real-time sensor readings interfaced via an Atmega328 microcontroller. The sensor data is then relayed to a mobile application created using Blynk. Additionally, the data is stored on an SD card for offline analysis. To understand the system better, refer to the provided system_diagram.

Components

- Sensor Readings: Interfaced via Atmega328 microcontroller after amplification.
- Mobile Application: Created using Blynk for real-time monitoring.
- Data Storage: Sensor data is stored on an SD card for offline analysis.
- MATLAB GUI: A MATLAB graphical user interface (GUI) is provided (GUI1.m code) for analyzing stored data. Use sample readings (e.g., SUB1.TXT) as input.


Files and Directory Structure

- Sensor Data:Interfaced to the microcontroller using `final.io` code.
- Mobile Application:Created with Blynk.
- MATLAB GUI:Use `GUI1.m` code for offline analysis. Place sample readings (e.g., `SUB1.TXT`) in the same directory.


Running the Codebase

To effectively utilize the Nasal Sensor Module codebase, follow the steps outlined below:

1. Sensor Interfacing
Use the provided `final.io` code to interface the sensor data with the Atmega328 microcontroller. Ensure proper connections and follow the specifications outlined in the code.

2. Mobile Application
Monitor real-time sensor readings by utilizing the Blynk mobile application. Configure the application to connect with the Atmega328 microcontroller and visualize the sensor data.

3. Data Storage
The Nasal Sensor Module automatically stores sensor data on an SD card. Ensure that the SD card is properly inserted, and the data storage functionality is active.

4. Offline Analysis with MATLAB GUI
Utilize the MATLAB graphical user interface (GUI) provided in `GUI1.m` for offline analysis. Follow these steps:

   a. Place sample readings, such as `SUB1.TXT`, in the same directory as the MATLAB GUI.
   
   b. Execute the MATLAB script (`GUI1.m`).

   c. Explore the GUI interface to analyze and visualize the stored sensor data.

Code Customization:The provided MATLAB GUI (`GUI1.m`) is designed as a starting point. Customize the code as needed for your specific use case or dataset.



