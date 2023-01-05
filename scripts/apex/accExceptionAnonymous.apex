try {
   account ac = new account();
insert ac;
} catch (DmlException dex) {
   system.debug('DML went wrong.');
}catch (Exception ex) {
   system.debug('somothing went wrong buddy');
   }
   system.debug('Apex is simple');

