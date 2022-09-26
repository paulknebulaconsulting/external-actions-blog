public without sharing class AECustomAction {

    public class CustomActionDto {
        @InvocableVariable(Label='Email Address' Required=true)
        public String emailAddress;
        @InvocableVariable(Label='First Name' Required=true)
        public String firstName;
        @InvocableVariable(Label='Company' Required=true)
        public String company;
    }

    @InvocableMethod(Label='AE - Custom Action')
    public static List<Result> callCustomAction(List<CustomActionDto> customActionDtos) {
        List<Result> results = new List<Result>();

        for (CustomActionDto customActionDto : customActionDtos) {
            Result thisResult = new Result();
            try {
                // Do something with the parameters...

                thisResult.success = true;
            } catch (Exception e) {
                thisResult.success = false;
                thisResult.errorMessage = e.getMessage();
            }
            results.add(thisResult);
        }

        return results;
    }

}