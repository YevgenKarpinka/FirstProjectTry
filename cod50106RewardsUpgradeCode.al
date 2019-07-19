codeunit 50106 RewardsUpgradeCode
{
    Subtype = Upgrade;

    trigger OnUpgradePerCompany()
    var
        // InstallCode: Codeunit RewardsInstallCode;
        Reward: Record Reward;
        Customer: Record Customer;
        Module: ModuleInfo;
    begin
        NavApp.GetCurrentModuleInfo(Module);
        if (Module.DataVersion.Major = 1) and (Reward.Get('BRONZE')) then begin
            Reward.Get('BRONZE');
            Reward.Rename('ALUMINUM');
            Reward.Description := 'Aluminum Level';
            Reward.Modify();
            with Customer do begin
                SetCurrentKey("Reward ID");
                SetRange("Reward ID", 'BRONZE');
                if not IsEmpty then
                    ModifyAll("Reward ID", 'ALUMINUM');
            end;
        end;
    end;

    var
        myInt: Integer;
}