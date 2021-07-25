part of 'store_bloc.dart';

@immutable
abstract class StoreState {
  final List<RAM> itemsHardwareRam;
  final List<Memory> itemsHardwareMemory;
  final List<CPU> itemsHardwareCpu;
  final List<Network> itemsHardwareNetwork;
  final List<Antivirus> itemsSoftwareAntivirus;
  final List<Bypasser> itemsSoftwareBypasser;
  final List<Firewall> itemsSoftwareFirewall;
  final List<PasswordCracker> itemsSoftwarePasswordCracker;
  final List<PasswordEncryptor> itemsSoftwarePasswordEncryptor;
  final List<Spam> itemsSoftwareSpam;
  final List<Spyware> itemsSoftwareSpyware;

  StoreState(
      this.itemsHardwareRam,
      this.itemsHardwareMemory,
      this.itemsHardwareCpu,
      this.itemsHardwareNetwork,
      this.itemsSoftwareAntivirus,
      this.itemsSoftwareBypasser,
      this.itemsSoftwareFirewall,
      this.itemsSoftwarePasswordCracker,
      this.itemsSoftwarePasswordEncryptor,
      this.itemsSoftwareSpam,
      this.itemsSoftwareSpyware);
}

class StoreInitial extends StoreState {
  StoreInitial(
      List<RAM> itemsHardwareRam,
      List<Memory> itemsHardwareMemory,
      List<CPU> itemsHardwareCpu,
      List<Network> itemsHardwareNetwork,
      List<Antivirus> itemsSoftwareAntivirus,
      List<Bypasser> itemsSoftwareBypasser,
      List<Firewall> itemsSoftwareFirewall,
      List<PasswordCracker> itemsSoftwarePasswordCracker,
      List<PasswordEncryptor> itemsSoftwarePasswordEncryptor,
      List<Spam> itemsSoftwareSpam,
      List<Spyware> itemsSoftwareSpyware)
      : super(
            itemsHardwareRam,
            itemsHardwareMemory,
            itemsHardwareCpu,
            itemsHardwareNetwork,
            itemsSoftwareAntivirus,
            itemsSoftwareBypasser,
            itemsSoftwareFirewall,
            itemsSoftwarePasswordCracker,
            itemsSoftwarePasswordEncryptor,
            itemsSoftwareSpam,
            itemsSoftwareSpyware);
}

class StoreShowSoftware extends StoreState {
  StoreShowSoftware(
      List<RAM> itemsHardwareRam,
      List<Memory> itemsHardwareMemory,
      List<CPU> itemsHardwareCpu,
      List<Network> itemsHardwareNetwork,
      List<Antivirus> itemsSoftwareAntivirus,
      List<Bypasser> itemsSoftwareBypasser,
      List<Firewall> itemsSoftwareFirewall,
      List<PasswordCracker> itemsSoftwarePasswordCracker,
      List<PasswordEncryptor> itemsSoftwarePasswordEncryptor,
      List<Spam> itemsSoftwareSpam,
      List<Spyware> itemsSoftwareSpyware)
      : super(
            itemsHardwareRam,
            itemsHardwareMemory,
            itemsHardwareCpu,
            itemsHardwareNetwork,
            itemsSoftwareAntivirus,
            itemsSoftwareBypasser,
            itemsSoftwareFirewall,
            itemsSoftwarePasswordCracker,
            itemsSoftwarePasswordEncryptor,
            itemsSoftwareSpam,
            itemsSoftwareSpyware);
}

class StoreShowHardware extends StoreState {
  StoreShowHardware(
      List<RAM> itemsHardwareRam,
      List<Memory> itemsHardwareMemory,
      List<CPU> itemsHardwareCpu,
      List<Network> itemsHardwareNetwork,
      List<Antivirus> itemsSoftwareAntivirus,
      List<Bypasser> itemsSoftwareBypasser,
      List<Firewall> itemsSoftwareFirewall,
      List<PasswordCracker> itemsSoftwarePasswordCracker,
      List<PasswordEncryptor> itemsSoftwarePasswordEncryptor,
      List<Spam> itemsSoftwareSpam,
      List<Spyware> itemsSoftwareSpyware)
      : super(
            itemsHardwareRam,
            itemsHardwareMemory,
            itemsHardwareCpu,
            itemsHardwareNetwork,
            itemsSoftwareAntivirus,
            itemsSoftwareBypasser,
            itemsSoftwareFirewall,
            itemsSoftwarePasswordCracker,
            itemsSoftwarePasswordEncryptor,
            itemsSoftwareSpam,
            itemsSoftwareSpyware);
}
