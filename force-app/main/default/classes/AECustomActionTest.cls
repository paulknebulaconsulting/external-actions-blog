@IsTest
private class AECustomActionTest {

    @IsTest
    static void customActionSuccess() {
        AECustomAction.CustomActionDto customActionDto = new AECustomAction.CustomActionDto();
        customActionDto.emailAddress = 'test@example.com';
        customActionDto.firstName = 'First Name';
        customActionDto.company = 'Universal Containers';
        List<Result> results = AECustomAction.callCustomAction(new List<AECustomAction.CustomActionDto>{
            customActionDto
        });
        System.assertEquals(results[0].success, true);
    }
}