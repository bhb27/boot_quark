.class public abstract Landroid/app/admin/IDevicePolicyManager$Stub;
.super Landroid/os/Binder;
.source "IDevicePolicyManager.java"

# interfaces
.implements Landroid/app/admin/IDevicePolicyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/IDevicePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.admin.IDevicePolicyManager"

.field static final TRANSACTION_activateApn:I = 0x103

.field static final TRANSACTION_addApn:I = 0x102

.field static final TRANSACTION_addApplicationsToList:I = 0x9f

.field static final TRANSACTION_addCrossProfileIntentFilter:I = 0x52

.field static final TRANSACTION_addCrossProfileWidgetProvider:I = 0x78

.field static final TRANSACTION_addEasAccount:I = 0xe2

.field static final TRANSACTION_addEmailAccount:I = 0xe3

.field static final TRANSACTION_addPacketFilterRulesToList:I = 0xd4

.field static final TRANSACTION_addPersistentPreferredActivity:I = 0x4b

.field static final TRANSACTION_addVpnConfiguration:I = 0xdf

.field static final TRANSACTION_choosePrivateKeyAlias:I = 0x48

.field static final TRANSACTION_clearCrossProfileIntentFilters:I = 0x53

.field static final TRANSACTION_clearDeviceInitializer:I = 0x80

.field static final TRANSACTION_clearDeviceOwner:I = 0x3c

.field static final TRANSACTION_clearPackagePersistentPreferredActivities:I = 0x4c

.field static final TRANSACTION_clearProfileOwner:I = 0x42

.field static final TRANSACTION_configureSingleSignOn:I = 0xef

.field static final TRANSACTION_createAndInitializeUser:I = 0x5d

.field static final TRANSACTION_createUser:I = 0x5c

.field static final TRANSACTION_enableRemoteControl:I = 0xeb

.field static final TRANSACTION_enableSystemApp:I = 0x60

.field static final TRANSACTION_enableSystemAppWithIntent:I = 0x61

.field static final TRANSACTION_enforceCanManageCaCerts:I = 0x46

.field static final TRANSACTION_getAccountTypesWithManagementDisabled:I = 0x63

.field static final TRANSACTION_getAccountTypesWithManagementDisabledAsUser:I = 0x64

.field static final TRANSACTION_getActiveAdmins:I = 0x30

.field static final TRANSACTION_getActiveApn:I = 0x106

.field static final TRANSACTION_getApnList:I = 0x105

.field static final TRANSACTION_getApplicationRestrictions:I = 0x4e

.field static final TRANSACTION_getAutoTimeRequired:I = 0x7c

.field static final TRANSACTION_getBluetoothContactSharingDisabled:I = 0x74

.field static final TRANSACTION_getBluetoothContactSharingDisabledForUser:I = 0x75

.field static final TRANSACTION_getBluetoothEnabledProfile:I = 0xaf

.field static final TRANSACTION_getCameraDisabled:I = 0x29

.field static final TRANSACTION_getCertInstallerPackage:I = 0x4a

.field static final TRANSACTION_getContactsEditingRestrictionWhitelist:I = 0xf2

.field static final TRANSACTION_getCrossProfileCallerIdDisabled:I = 0x70

.field static final TRANSACTION_getCrossProfileCallerIdDisabledForUser:I = 0x71

.field static final TRANSACTION_getCrossProfileWidgetProviders:I = 0x7a

.field static final TRANSACTION_getCurrentFailedPasswordAttempts:I = 0x17

.field static final TRANSACTION_getCurrentFailedPasswordAttemptsInternal:I = 0x19

.field static final TRANSACTION_getDeviceInitializer:I = 0x82

.field static final TRANSACTION_getDeviceInitializerComponent:I = 0x83

.field static final TRANSACTION_getDeviceOwner:I = 0x3a

.field static final TRANSACTION_getDeviceOwnerName:I = 0x3b

.field static final TRANSACTION_getDeviceRootingStatus:I = 0xdd

.field static final TRANSACTION_getDoNotAskCredentialsOnBoot:I = 0x89

.field static final TRANSACTION_getEASDeviceId:I = 0xf5

.field static final TRANSACTION_getGlobalProxyAdmin:I = 0x22

.field static final TRANSACTION_getInfraredDisabled:I = 0xa8

.field static final TRANSACTION_getKeyguardDisabledFeatures:I = 0x2d

.field static final TRANSACTION_getLockTaskPackages:I = 0x66

.field static final TRANSACTION_getLockTopActivityStatus:I = 0x11a

.field static final TRANSACTION_getMaximumFailedPasswordsForWipe:I = 0x1b

.field static final TRANSACTION_getMaximumTimeToLock:I = 0x1e

.field static final TRANSACTION_getMobileDataUsage:I = 0xbc

.field static final TRANSACTION_getOtpMsg:I = 0x99

.field static final TRANSACTION_getOtpPhoneNumber:I = 0x9a

.field static final TRANSACTION_getPacketFilterRules:I = 0xd6

.field static final TRANSACTION_getPasswordExpiration:I = 0x15

.field static final TRANSACTION_getPasswordExpirationTimeout:I = 0x14

.field static final TRANSACTION_getPasswordHistoryLength:I = 0x12

.field static final TRANSACTION_getPasswordMinimumLength:I = 0x4

.field static final TRANSACTION_getPasswordMinimumLetters:I = 0xa

.field static final TRANSACTION_getPasswordMinimumLowerCase:I = 0x8

.field static final TRANSACTION_getPasswordMinimumNonLetter:I = 0x10

.field static final TRANSACTION_getPasswordMinimumNumeric:I = 0xc

.field static final TRANSACTION_getPasswordMinimumSymbols:I = 0xe

.field static final TRANSACTION_getPasswordMinimumUpperCase:I = 0x6

.field static final TRANSACTION_getPasswordQuality:I = 0x2

.field static final TRANSACTION_getPermissionGrantState:I = 0x8e

.field static final TRANSACTION_getPermissionPolicy:I = 0x8c

.field static final TRANSACTION_getPermittedAccessibilityServices:I = 0x55

.field static final TRANSACTION_getPermittedAccessibilityServicesForUser:I = 0x56

.field static final TRANSACTION_getPermittedInputMethods:I = 0x58

.field static final TRANSACTION_getPermittedInputMethodsForCurrentUser:I = 0x59

.field static final TRANSACTION_getProfileOwner:I = 0x3e

.field static final TRANSACTION_getProfileOwnerName:I = 0x3f

.field static final TRANSACTION_getProfileWithMinimumFailedPasswordsForWipe:I = 0x18

.field static final TRANSACTION_getRemoveWarning:I = 0x32

.field static final TRANSACTION_getRestrictionsProvider:I = 0x50

.field static final TRANSACTION_getRoamingDataLimit:I = 0xcb

.field static final TRANSACTION_getRoamingDataLimitCycleDuration:I = 0xcd

.field static final TRANSACTION_getRoamingDataLimitCycleStart:I = 0xcc

.field static final TRANSACTION_getRoamingDataUsageFromCycleStart:I = 0xce

.field static final TRANSACTION_getRoamingLimitSimIccId:I = 0xc7

.field static final TRANSACTION_getScreenCaptureDisabled:I = 0x2b

.field static final TRANSACTION_getScreenshot:I = 0xee

.field static final TRANSACTION_getSdcardEncryption:I = 0x92

.field static final TRANSACTION_getSdcardEncryptionStatus:I = 0x93

.field static final TRANSACTION_getSecureTimeMillis:I = 0xcf

.field static final TRANSACTION_getStorageEncryption:I = 0x25

.field static final TRANSACTION_getStorageEncryptionStatus:I = 0x27

.field static final TRANSACTION_getStorageEncryptionStatusIgnoreScreenlock:I = 0x26

.field static final TRANSACTION_getSystemUIDisabled:I = 0x11c

.field static final TRANSACTION_getSystemUpdatePolicy:I = 0x86

.field static final TRANSACTION_getTrustAgentConfiguration:I = 0x77

.field static final TRANSACTION_getUncontrolledRootingStatus:I = 0xde

.field static final TRANSACTION_getVpnConfigurationNames:I = 0xe1

.field static final TRANSACTION_hasGrantedPolicy:I = 0x34

.field static final TRANSACTION_hasUserSetupCompleted:I = 0x43

.field static final TRANSACTION_injectKeyEvent:I = 0xed

.field static final TRANSACTION_injectMotionEvent:I = 0xec

.field static final TRANSACTION_installCaCert:I = 0x44

.field static final TRANSACTION_installCertFromDer:I = 0xe5

.field static final TRANSACTION_installCertFromPkcs12:I = 0xe6

.field static final TRANSACTION_installKeyPair:I = 0x47

.field static final TRANSACTION_installPackage:I = 0xe7

.field static final TRANSACTION_isActivePasswordSufficient:I = 0x16

.field static final TRANSACTION_isAddUserDisabled:I = 0xdc

.field static final TRANSACTION_isAdminActive:I = 0x2f

.field static final TRANSACTION_isApnFixed:I = 0x107

.field static final TRANSACTION_isApplicationDisabled:I = 0x9e

.field static final TRANSACTION_isApplicationHidden:I = 0x5b

.field static final TRANSACTION_isApplicationListed:I = 0xa2

.field static final TRANSACTION_isAudioRecordingDisabled:I = 0xf9

.field static final TRANSACTION_isAutoBootModeEnabled:I = 0x112

.field static final TRANSACTION_isAutoSyncDataDisabled:I = 0x101

.field static final TRANSACTION_isAutoSyncWhenRoamingDisabled:I = 0xbb

.field static final TRANSACTION_isBrowserDisabled:I = 0xa6

.field static final TRANSACTION_isClipboardDisabled:I = 0x116

.field static final TRANSACTION_isConsumerEmailDisabled:I = 0xd3

.field static final TRANSACTION_isDataRoamingDisabled:I = 0xb9

.field static final TRANSACTION_isDeactivationDisabled:I = 0xd8

.field static final TRANSACTION_isDeviceInitializer:I = 0x7f

.field static final TRANSACTION_isDeviceOwner:I = 0x39

.field static final TRANSACTION_isHomeAppChangeRestricted:I = 0x11e

.field static final TRANSACTION_isLoaderModeOsvExecutionDisabled:I = 0xea

.field static final TRANSACTION_isLocalDesktopSyncDisabled:I = 0xb3

.field static final TRANSACTION_isLocationDisabled:I = 0xc2

.field static final TRANSACTION_isLocationDisabledForCurrentUser:I = 0xc3

.field static final TRANSACTION_isLocationSettingFixedOn:I = 0x10f

.field static final TRANSACTION_isLocationSettingFixedOnForCurrentUser:I = 0x110

.field static final TRANSACTION_isLockTaskPermitted:I = 0x67

.field static final TRANSACTION_isMasterVolumeMuted:I = 0x6b

.field static final TRANSACTION_isMobileDataDisabled:I = 0xf7

.field static final TRANSACTION_isMockLocationDisabled:I = 0x114

.field static final TRANSACTION_isMountingExternalStorageDisabled:I = 0xab

.field static final TRANSACTION_isNfcDisabled:I = 0xf4

.field static final TRANSACTION_isNonMarketAppsDisabled:I = 0xbe

.field static final TRANSACTION_isOtpLockActive:I = 0x9b

.field static final TRANSACTION_isOtpLockRemote:I = 0x98

.field static final TRANSACTION_isOutgoingCallRestricted:I = 0xf1

.field static final TRANSACTION_isPopImapEmailDisabled:I = 0xd1

.field static final TRANSACTION_isRebootAndShutdownDisabled:I = 0x109

.field static final TRANSACTION_isRecoveryPasswordSaved:I = 0x94

.field static final TRANSACTION_isRemovingAdmin:I = 0x7d

.field static final TRANSACTION_isRoamingDataLimitSet:I = 0xca

.field static final TRANSACTION_isSafeModeDisabled:I = 0xda

.field static final TRANSACTION_isScreenSleepDisabled:I = 0x118

.field static final TRANSACTION_isScreenshotDisabled:I = 0xb7

.field static final TRANSACTION_isSettingsDisabled:I = 0xfb

.field static final TRANSACTION_isSimplePasswordRestricted:I = 0x97

.field static final TRANSACTION_isTetheringDisabled:I = 0xb1

.field static final TRANSACTION_isTextMessagingDisabled:I = 0xc5

.field static final TRANSACTION_isUninstallBlocked:I = 0x6e

.field static final TRANSACTION_isUsbDebuggingDisabled:I = 0xb5

.field static final TRANSACTION_isUsbMassStorageDisabled:I = 0xc0

.field static final TRANSACTION_isVoiceRoamingDisabled:I = 0xfd

.field static final TRANSACTION_isWallpaperChangeRestricted:I = 0x10d

.field static final TRANSACTION_isWifiDisabled:I = 0xad

.field static final TRANSACTION_listCertificates:I = 0xff

.field static final TRANSACTION_lockNow:I = 0x1f

.field static final TRANSACTION_lockNowOtp:I = 0x9c

.field static final TRANSACTION_lockTopActivity:I = 0x119

.field static final TRANSACTION_lockWallpaper:I = 0x10c

.field static final TRANSACTION_notifyLockTaskModeChanged:I = 0x6c

.field static final TRANSACTION_notifyPendingSystemUpdate:I = 0x8a

.field static final TRANSACTION_packageHasActiveAdmins:I = 0x31

.field static final TRANSACTION_reboot:I = 0x10a

.field static final TRANSACTION_releasePolicies:I = 0x90

.field static final TRANSACTION_removeActiveAdmin:I = 0x33

.field static final TRANSACTION_removeAllApplicationsFromList:I = 0xa1

.field static final TRANSACTION_removeAllPacketFilterRulesFromList:I = 0xd5

.field static final TRANSACTION_removeApn:I = 0x104

.field static final TRANSACTION_removeApplicationsFromList:I = 0xa0

.field static final TRANSACTION_removeCertificate:I = 0xfe

.field static final TRANSACTION_removeCrossProfileWidgetProvider:I = 0x79

.field static final TRANSACTION_removeEmailAccount:I = 0xe4

.field static final TRANSACTION_removeUser:I = 0x5e

.field static final TRANSACTION_removeVpnConfiguration:I = 0xe0

.field static final TRANSACTION_reportFailedPasswordAttempt:I = 0x36

.field static final TRANSACTION_reportSuccessfulPasswordAttempt:I = 0x37

.field static final TRANSACTION_reportSuccessfulRecoveryPasswordAttempt:I = 0xa9

.field static final TRANSACTION_resetPassword:I = 0x1c

.field static final TRANSACTION_restrictChangeHomeApp:I = 0x11d

.field static final TRANSACTION_saveRecoveryPassword:I = 0x95

.field static final TRANSACTION_setAccountManagementDisabled:I = 0x62

.field static final TRANSACTION_setActiveAdmin:I = 0x2e

.field static final TRANSACTION_setActivePasswordState:I = 0x35

.field static final TRANSACTION_setAddUserDisabled:I = 0xdb

.field static final TRANSACTION_setApplicationHidden:I = 0x5a

.field static final TRANSACTION_setApplicationRestrictions:I = 0x4d

.field static final TRANSACTION_setAudioRecordingDisabled:I = 0xf8

.field static final TRANSACTION_setAutoBootMode:I = 0x111

.field static final TRANSACTION_setAutoSyncDataDisabled:I = 0x100

.field static final TRANSACTION_setAutoSyncWhenRoamingDisabled:I = 0xba

.field static final TRANSACTION_setAutoTimeRequired:I = 0x7b

.field static final TRANSACTION_setBluetoothContactSharingDisabled:I = 0x73

.field static final TRANSACTION_setBluetoothEnabledProfile:I = 0xae

.field static final TRANSACTION_setBrowserDisabled:I = 0xa5

.field static final TRANSACTION_setCameraDisabled:I = 0x28

.field static final TRANSACTION_setCertInstallerPackage:I = 0x49

.field static final TRANSACTION_setClipboardDisabled:I = 0x115

.field static final TRANSACTION_setConsumerEmailDisabled:I = 0xd2

.field static final TRANSACTION_setCrossProfileCallerIdDisabled:I = 0x6f

.field static final TRANSACTION_setDataRoamingDisabled:I = 0xb8

.field static final TRANSACTION_setDeactivationDisabled:I = 0xd7

.field static final TRANSACTION_setDeviceInitializer:I = 0x81

.field static final TRANSACTION_setDeviceOwner:I = 0x38

.field static final TRANSACTION_setGlobalProxy:I = 0x21

.field static final TRANSACTION_setGlobalSetting:I = 0x68

.field static final TRANSACTION_setInfraredDisabled:I = 0xa7

.field static final TRANSACTION_setKeyguardDisabled:I = 0x87

.field static final TRANSACTION_setKeyguardDisabledFeatures:I = 0x2c

.field static final TRANSACTION_setLoaderModeOsvExecutionDisabled:I = 0xe9

.field static final TRANSACTION_setLocalDesktopSyncDisabled:I = 0xb2

.field static final TRANSACTION_setLocationDisabled:I = 0xc1

.field static final TRANSACTION_setLocationSettingFixedOn:I = 0x10e

.field static final TRANSACTION_setLockTaskPackages:I = 0x65

.field static final TRANSACTION_setMasterVolumeMuted:I = 0x6a

.field static final TRANSACTION_setMaximumFailedPasswordsForWipe:I = 0x1a

.field static final TRANSACTION_setMaximumTimeToLock:I = 0x1d

.field static final TRANSACTION_setMobileDataDisabled:I = 0xf6

.field static final TRANSACTION_setMockLocationDisabled:I = 0x113

.field static final TRANSACTION_setMountingExternalStorageDisabled:I = 0xaa

.field static final TRANSACTION_setNfcDisabled:I = 0xf3

.field static final TRANSACTION_setNonMarketAppsDisabled:I = 0xbd

.field static final TRANSACTION_setOutgoingCallRestricted:I = 0xf0

.field static final TRANSACTION_setPasswordExpirationTimeout:I = 0x13

.field static final TRANSACTION_setPasswordHistoryLength:I = 0x11

.field static final TRANSACTION_setPasswordMinimumLength:I = 0x3

.field static final TRANSACTION_setPasswordMinimumLetters:I = 0x9

.field static final TRANSACTION_setPasswordMinimumLowerCase:I = 0x7

.field static final TRANSACTION_setPasswordMinimumNonLetter:I = 0xf

.field static final TRANSACTION_setPasswordMinimumNumeric:I = 0xb

.field static final TRANSACTION_setPasswordMinimumSymbols:I = 0xd

.field static final TRANSACTION_setPasswordMinimumUpperCase:I = 0x5

.field static final TRANSACTION_setPasswordQuality:I = 0x1

.field static final TRANSACTION_setPermissionGrantState:I = 0x8d

.field static final TRANSACTION_setPermissionPolicy:I = 0x8b

.field static final TRANSACTION_setPermittedAccessibilityServices:I = 0x54

.field static final TRANSACTION_setPermittedInputMethods:I = 0x57

.field static final TRANSACTION_setPopImapEmailDisabled:I = 0xd0

.field static final TRANSACTION_setProfileEnabled:I = 0x40

.field static final TRANSACTION_setProfileName:I = 0x41

.field static final TRANSACTION_setProfileOwner:I = 0x3d

.field static final TRANSACTION_setRebootAndShutdownDisabled:I = 0x108

.field static final TRANSACTION_setRecommendedGlobalProxy:I = 0x23

.field static final TRANSACTION_setRestrictionsProvider:I = 0x4f

.field static final TRANSACTION_setRoamingDataLimit:I = 0xc8

.field static final TRANSACTION_setRoamingLimitSimIccId:I = 0xc6

.field static final TRANSACTION_setSafeModeDisabled:I = 0xd9

.field static final TRANSACTION_setScreenCaptureDisabled:I = 0x2a

.field static final TRANSACTION_setScreenSleepDisabled:I = 0x117

.field static final TRANSACTION_setScreenshotDisabled:I = 0xb6

.field static final TRANSACTION_setSdcardEncryption:I = 0x91

.field static final TRANSACTION_setSecureSetting:I = 0x69

.field static final TRANSACTION_setSettingsDisabled:I = 0xfa

.field static final TRANSACTION_setSimplePasswordRestricted:I = 0x96

.field static final TRANSACTION_setStatusBarDisabled:I = 0x88

.field static final TRANSACTION_setStorageEncryption:I = 0x24

.field static final TRANSACTION_setSystemUIDisabled:I = 0x11b

.field static final TRANSACTION_setSystemUpdatePolicy:I = 0x85

.field static final TRANSACTION_setTetheringDisabled:I = 0xb0

.field static final TRANSACTION_setTextMessagingDisabled:I = 0xc4

.field static final TRANSACTION_setTrustAgentConfiguration:I = 0x76

.field static final TRANSACTION_setUninstallBlocked:I = 0x6d

.field static final TRANSACTION_setUsbDebuggingDisabled:I = 0xb4

.field static final TRANSACTION_setUsbMassStorageDisabled:I = 0xbf

.field static final TRANSACTION_setUserEnabled:I = 0x7e

.field static final TRANSACTION_setUserIcon:I = 0x84

.field static final TRANSACTION_setUserRestriction:I = 0x51

.field static final TRANSACTION_setVoiceRoamingDisabled:I = 0xfc

.field static final TRANSACTION_setWifiDisabled:I = 0xac

.field static final TRANSACTION_shouldBeInstallationDisabled:I = 0xa3

.field static final TRANSACTION_shouldBeUninstallationDisabled:I = 0xa4

.field static final TRANSACTION_shutdown:I = 0x10b

.field static final TRANSACTION_startManagedQuickContact:I = 0x72

.field static final TRANSACTION_switchUser:I = 0x5f

.field static final TRANSACTION_uninstallCaCerts:I = 0x45

.field static final TRANSACTION_uninstallPackage:I = 0xe8

.field static final TRANSACTION_unlockNowOtp:I = 0x9d

.field static final TRANSACTION_unsetRoamingDataLimit:I = 0xc9

.field static final TRANSACTION_wipeData:I = 0x20

.field static final TRANSACTION_wipeExternalSdCard:I = 0x8f


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v1, "android.app.admin.IDevicePolicyManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Landroid/app/admin/IDevicePolicyManager;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 51
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 4739
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 46
    :sswitch_0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/4 v4, 0x1

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 54
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 60
    .local v5, "_arg0":Landroid/content/ComponentName;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 61
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordQuality(Landroid/content/ComponentName;I)V

    .line 62
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    const/4 v4, 0x1

    goto :goto_0

    .line 57
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    :cond_0
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_1

    .line 67
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_2
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 70
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 76
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 77
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v44

    .line 78
    .local v44, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    const/4 v4, 0x1

    goto :goto_0

    .line 73
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":I
    :cond_1
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_2

    .line 84
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_3
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 87
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 93
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 94
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLength(Landroid/content/ComponentName;I)V

    .line 95
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 90
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    :cond_2
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_3

    .line 100
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_4
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    .line 103
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 109
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 110
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v44

    .line 111
    .restart local v44    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 106
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":I
    :cond_3
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_4

    .line 117
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_5
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    .line 120
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 126
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 127
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumUpperCase(Landroid/content/ComponentName;I)V

    .line 128
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 123
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    :cond_4
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_5

    .line 133
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_6
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    .line 136
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 142
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 143
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I

    move-result v44

    .line 144
    .restart local v44    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 139
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":I
    :cond_5
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_6

    .line 150
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_7
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    .line 153
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 159
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 160
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLowerCase(Landroid/content/ComponentName;I)V

    .line 161
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 156
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    :cond_6
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_7

    .line 166
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_8
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    .line 169
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 175
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 176
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I

    move-result v44

    .line 177
    .restart local v44    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 172
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":I
    :cond_7
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_8

    .line 183
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_9
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    .line 186
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 192
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 193
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLetters(Landroid/content/ComponentName;I)V

    .line 194
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 189
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    :cond_8
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_9

    .line 199
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_a
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9

    .line 202
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 208
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 209
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLetters(Landroid/content/ComponentName;I)I

    move-result v44

    .line 210
    .restart local v44    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 205
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":I
    :cond_9
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_a

    .line 216
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_b
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    .line 219
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 225
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 226
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumNumeric(Landroid/content/ComponentName;I)V

    .line 227
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 222
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    :cond_a
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_b

    .line 232
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_c
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b

    .line 235
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 241
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 242
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I

    move-result v44

    .line 243
    .restart local v44    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 238
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":I
    :cond_b
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_c

    .line 249
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_d
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c

    .line 252
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 258
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 259
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumSymbols(Landroid/content/ComponentName;I)V

    .line 260
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 255
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    :cond_c
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_d

    .line 265
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_e
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d

    .line 268
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 274
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 275
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I

    move-result v44

    .line 276
    .restart local v44    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 271
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":I
    :cond_d
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_e

    .line 282
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_f
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e

    .line 285
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 291
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 292
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumNonLetter(Landroid/content/ComponentName;I)V

    .line 293
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 288
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    :cond_e
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_f

    .line 298
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_10
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f

    .line 301
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 307
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 308
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I

    move-result v44

    .line 309
    .restart local v44    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 304
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":I
    :cond_f
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_10

    .line 315
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_11
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_10

    .line 318
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 324
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 325
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordHistoryLength(Landroid/content/ComponentName;I)V

    .line 326
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 321
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    :cond_10
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_11

    .line 331
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_12
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_11

    .line 334
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 340
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 341
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordHistoryLength(Landroid/content/ComponentName;I)I

    move-result v44

    .line 342
    .restart local v44    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 344
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 337
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":I
    :cond_11
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_12

    .line 348
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_13
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_12

    .line 351
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 357
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 358
    .local v18, "_arg1":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordExpirationTimeout(Landroid/content/ComponentName;J)V

    .line 359
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 354
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v18    # "_arg1":J
    :cond_12
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_13

    .line 364
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_14
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 366
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_13

    .line 367
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 373
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 374
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordExpirationTimeout(Landroid/content/ComponentName;I)J

    move-result-wide v44

    .line 375
    .local v44, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    move-object/from16 v0, p3

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 377
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 370
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":J
    :cond_13
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_14

    .line 381
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_15
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_14

    .line 384
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 390
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 391
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordExpiration(Landroid/content/ComponentName;I)J

    move-result-wide v44

    .line 392
    .restart local v44    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    move-object/from16 v0, p3

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 394
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 387
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":J
    :cond_14
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_15

    .line 398
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_16
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 400
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 401
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->isActivePasswordSufficient(I)Z

    move-result v44

    .line 402
    .local v44, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 403
    if-eqz v44, :cond_15

    const/4 v4, 0x1

    :goto_16
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 404
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 403
    :cond_15
    const/4 v4, 0x0

    goto :goto_16

    .line 408
    .end local v5    # "_arg0":I
    .end local v44    # "_result":Z
    :sswitch_17
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 410
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 411
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCurrentFailedPasswordAttempts(I)I

    move-result v44

    .line 412
    .local v44, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 414
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 418
    .end local v5    # "_arg0":I
    .end local v44    # "_result":I
    :sswitch_18
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 420
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 421
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getProfileWithMinimumFailedPasswordsForWipe(I)I

    move-result v44

    .line 422
    .restart local v44    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 423
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 424
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 428
    .end local v5    # "_arg0":I
    .end local v44    # "_result":I
    :sswitch_19
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 430
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 431
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCurrentFailedPasswordAttemptsInternal(I)I

    move-result v44

    .line 432
    .restart local v44    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 434
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 438
    .end local v5    # "_arg0":I
    .end local v44    # "_result":I
    :sswitch_1a
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_16

    .line 441
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 447
    .local v5, "_arg0":Landroid/content/ComponentName;
    :goto_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 448
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)V

    .line 449
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 450
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 444
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    :cond_16
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_17

    .line 454
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_1b
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 456
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_17

    .line 457
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 463
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 464
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v44

    .line 465
    .restart local v44    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 466
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 467
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 460
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":I
    :cond_17
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_18

    .line 471
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_1c
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 473
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 475
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 476
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->resetPassword(Ljava/lang/String;I)Z

    move-result v44

    .line 477
    .local v44, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 478
    if-eqz v44, :cond_18

    const/4 v4, 0x1

    :goto_19
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 479
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 478
    :cond_18
    const/4 v4, 0x0

    goto :goto_19

    .line 483
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":Z
    :sswitch_1d
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 485
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_19

    .line 486
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 492
    .local v5, "_arg0":Landroid/content/ComponentName;
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 493
    .restart local v18    # "_arg1":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaximumTimeToLock(Landroid/content/ComponentName;J)V

    .line 494
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 495
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 489
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v18    # "_arg1":J
    :cond_19
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_1a

    .line 499
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_1e
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 501
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1a

    .line 502
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 508
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 509
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v44

    .line 510
    .local v44, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 511
    move-object/from16 v0, p3

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 512
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 505
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":J
    :cond_1a
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_1b

    .line 516
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_1f
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 517
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->lockNow()V

    .line 518
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 519
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 523
    :sswitch_20
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 525
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 527
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 528
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->wipeData(II)V

    .line 529
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 530
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 534
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    :sswitch_21
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 536
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1b

    .line 537
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 543
    .local v5, "_arg0":Landroid/content/ComponentName;
    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 545
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 546
    .local v7, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setGlobalProxy(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v44

    .line 547
    .local v44, "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 548
    if-eqz v44, :cond_1c

    .line 549
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 550
    const/4 v4, 0x1

    move-object/from16 v0, v44

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 555
    :goto_1d
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 540
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v44    # "_result":Landroid/content/ComponentName;
    :cond_1b
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_1c

    .line 553
    .restart local v6    # "_arg1":Ljava/lang/String;
    .restart local v7    # "_arg2":Ljava/lang/String;
    .restart local v44    # "_result":Landroid/content/ComponentName;
    :cond_1c
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1d

    .line 559
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v44    # "_result":Landroid/content/ComponentName;
    :sswitch_22
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 561
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 562
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getGlobalProxyAdmin(I)Landroid/content/ComponentName;

    move-result-object v44

    .line 563
    .restart local v44    # "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 564
    if-eqz v44, :cond_1d

    .line 565
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 566
    const/4 v4, 0x1

    move-object/from16 v0, v44

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 571
    :goto_1e
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 569
    :cond_1d
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1e

    .line 575
    .end local v5    # "_arg0":I
    .end local v44    # "_result":Landroid/content/ComponentName;
    :sswitch_23
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 577
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1e

    .line 578
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 584
    .local v5, "_arg0":Landroid/content/ComponentName;
    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1f

    .line 585
    sget-object v4, Landroid/net/ProxyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ProxyInfo;

    .line 590
    .local v6, "_arg1":Landroid/net/ProxyInfo;
    :goto_20
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRecommendedGlobalProxy(Landroid/content/ComponentName;Landroid/net/ProxyInfo;)V

    .line 591
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 592
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 581
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Landroid/net/ProxyInfo;
    :cond_1e
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_1f

    .line 588
    :cond_1f
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/net/ProxyInfo;
    goto :goto_20

    .line 596
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Landroid/net/ProxyInfo;
    :sswitch_24
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 598
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_20

    .line 599
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 605
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_21

    const/4 v6, 0x1

    .line 606
    .local v6, "_arg1":Z
    :goto_22
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setStorageEncryption(Landroid/content/ComponentName;Z)I

    move-result v44

    .line 607
    .local v44, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 608
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 609
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 602
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    .end local v44    # "_result":I
    :cond_20
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_21

    .line 605
    :cond_21
    const/4 v6, 0x0

    goto :goto_22

    .line 613
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_25
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 615
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_22

    .line 616
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 622
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 623
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getStorageEncryption(Landroid/content/ComponentName;I)Z

    move-result v44

    .line 624
    .local v44, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 625
    if-eqz v44, :cond_23

    const/4 v4, 0x1

    :goto_24
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 626
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 619
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":Z
    :cond_22
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_23

    .line 625
    .restart local v6    # "_arg1":I
    .restart local v44    # "_result":Z
    :cond_23
    const/4 v4, 0x0

    goto :goto_24

    .line 630
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":Z
    :sswitch_26
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 632
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 633
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getStorageEncryptionStatusIgnoreScreenlock(I)I

    move-result v44

    .line 634
    .local v44, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 635
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 636
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 640
    .end local v5    # "_arg0":I
    .end local v44    # "_result":I
    :sswitch_27
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 642
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 643
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getStorageEncryptionStatus(I)I

    move-result v44

    .line 644
    .restart local v44    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 645
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 646
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 650
    .end local v5    # "_arg0":I
    .end local v44    # "_result":I
    :sswitch_28
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 652
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_24

    .line 653
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 659
    .local v5, "_arg0":Landroid/content/ComponentName;
    :goto_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_25

    const/4 v6, 0x1

    .line 660
    .local v6, "_arg1":Z
    :goto_26
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCameraDisabled(Landroid/content/ComponentName;Z)V

    .line 661
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 662
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 656
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    :cond_24
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_25

    .line 659
    :cond_25
    const/4 v6, 0x0

    goto :goto_26

    .line 666
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_29
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 668
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_26

    .line 669
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 675
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 676
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    move-result v44

    .line 677
    .local v44, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 678
    if-eqz v44, :cond_27

    const/4 v4, 0x1

    :goto_28
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 679
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 672
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":Z
    :cond_26
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_27

    .line 678
    .restart local v6    # "_arg1":I
    .restart local v44    # "_result":Z
    :cond_27
    const/4 v4, 0x0

    goto :goto_28

    .line 683
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":Z
    :sswitch_2a
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 685
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_28

    .line 686
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 692
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_29

    const/4 v6, 0x1

    .line 693
    .local v6, "_arg1":Z
    :goto_2a
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setScreenCaptureDisabled(Landroid/content/ComponentName;Z)V

    .line 694
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 695
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 689
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    :cond_28
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_29

    .line 692
    :cond_29
    const/4 v6, 0x0

    goto :goto_2a

    .line 699
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_2b
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 701
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2a

    .line 702
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 708
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 709
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getScreenCaptureDisabled(Landroid/content/ComponentName;I)Z

    move-result v44

    .line 710
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 711
    if-eqz v44, :cond_2b

    const/4 v4, 0x1

    :goto_2c
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 712
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 705
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":Z
    :cond_2a
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_2b

    .line 711
    .restart local v6    # "_arg1":I
    .restart local v44    # "_result":Z
    :cond_2b
    const/4 v4, 0x0

    goto :goto_2c

    .line 716
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":Z
    :sswitch_2c
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 718
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2c

    .line 719
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 725
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 726
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setKeyguardDisabledFeatures(Landroid/content/ComponentName;I)V

    .line 727
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 728
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 722
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    :cond_2c
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_2d

    .line 732
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_2d
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 734
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2d

    .line 735
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 741
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 742
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v44

    .line 743
    .local v44, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 744
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 745
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 738
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":I
    :cond_2d
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_2e

    .line 749
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_2e
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 751
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2e

    .line 752
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 758
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2f

    const/4 v6, 0x1

    .line 760
    .local v6, "_arg1":Z
    :goto_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 761
    .local v7, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    .line 762
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 763
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 755
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":I
    :cond_2e
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_2f

    .line 758
    :cond_2f
    const/4 v6, 0x0

    goto :goto_30

    .line 767
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_2f
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 769
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_30

    .line 770
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 776
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 777
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAdminActive(Landroid/content/ComponentName;I)Z

    move-result v44

    .line 778
    .local v44, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 779
    if-eqz v44, :cond_31

    const/4 v4, 0x1

    :goto_32
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 780
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 773
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":Z
    :cond_30
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_31

    .line 779
    .restart local v6    # "_arg1":I
    .restart local v44    # "_result":Z
    :cond_31
    const/4 v4, 0x0

    goto :goto_32

    .line 784
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":Z
    :sswitch_30
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 786
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 787
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getActiveAdmins(I)Ljava/util/List;

    move-result-object v46

    .line 788
    .local v46, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 789
    move-object/from16 v0, p3

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 790
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 794
    .end local v5    # "_arg0":I
    .end local v46    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :sswitch_31
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 796
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 798
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 799
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->packageHasActiveAdmins(Ljava/lang/String;I)Z

    move-result v44

    .line 800
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 801
    if-eqz v44, :cond_32

    const/4 v4, 0x1

    :goto_33
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 802
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 801
    :cond_32
    const/4 v4, 0x0

    goto :goto_33

    .line 806
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":Z
    :sswitch_32
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 808
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_33

    .line 809
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 815
    .local v5, "_arg0":Landroid/content/ComponentName;
    :goto_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_34

    .line 816
    sget-object v4, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/RemoteCallback;

    .line 822
    .local v6, "_arg1":Landroid/os/RemoteCallback;
    :goto_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 823
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;I)V

    .line 824
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 825
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 812
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Landroid/os/RemoteCallback;
    .end local v7    # "_arg2":I
    :cond_33
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_34

    .line 819
    :cond_34
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/os/RemoteCallback;
    goto :goto_35

    .line 829
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Landroid/os/RemoteCallback;
    :sswitch_33
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 831
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_35

    .line 832
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 838
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 839
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeActiveAdmin(Landroid/content/ComponentName;I)V

    .line 840
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 841
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 835
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    :cond_35
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_36

    .line 845
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_34
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 847
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_36

    .line 848
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 854
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 856
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 857
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->hasGrantedPolicy(Landroid/content/ComponentName;II)Z

    move-result v44

    .line 858
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 859
    if-eqz v44, :cond_37

    const/4 v4, 0x1

    :goto_38
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 860
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 851
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v44    # "_result":Z
    :cond_36
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_37

    .line 859
    .restart local v6    # "_arg1":I
    .restart local v7    # "_arg2":I
    .restart local v44    # "_result":Z
    :cond_37
    const/4 v4, 0x0

    goto :goto_38

    .line 864
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v44    # "_result":Z
    :sswitch_35
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 866
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 868
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 870
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 872
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 874
    .local v8, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 876
    .local v9, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 878
    .local v10, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 880
    .local v11, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 882
    .local v12, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 884
    .local v13, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .local v14, "_arg9":I
    move-object/from16 v4, p0

    .line 885
    invoke-virtual/range {v4 .. v14}, Landroid/app/admin/IDevicePolicyManager$Stub;->setActivePasswordState(IIIIIIIIII)V

    .line 886
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 887
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 891
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    .end local v10    # "_arg5":I
    .end local v11    # "_arg6":I
    .end local v12    # "_arg7":I
    .end local v13    # "_arg8":I
    .end local v14    # "_arg9":I
    :sswitch_36
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 893
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 894
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportFailedPasswordAttempt(I)V

    .line 895
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 896
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 900
    .end local v5    # "_arg0":I
    :sswitch_37
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 902
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 903
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportSuccessfulPasswordAttempt(I)V

    .line 904
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 905
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 909
    .end local v5    # "_arg0":I
    :sswitch_38
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 911
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 913
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 914
    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDeviceOwner(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v44

    .line 915
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 916
    if-eqz v44, :cond_38

    const/4 v4, 0x1

    :goto_39
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 917
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 916
    :cond_38
    const/4 v4, 0x0

    goto :goto_39

    .line 921
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v44    # "_result":Z
    :sswitch_39
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 923
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 924
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->isDeviceOwner(Ljava/lang/String;)Z

    move-result v44

    .line 925
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 926
    if-eqz v44, :cond_39

    const/4 v4, 0x1

    :goto_3a
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 927
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 926
    :cond_39
    const/4 v4, 0x0

    goto :goto_3a

    .line 931
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v44    # "_result":Z
    :sswitch_3a
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 932
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwner()Ljava/lang/String;

    move-result-object v44

    .line 933
    .local v44, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 934
    move-object/from16 v0, p3

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 935
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 939
    .end local v44    # "_result":Ljava/lang/String;
    :sswitch_3b
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 940
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwnerName()Ljava/lang/String;

    move-result-object v44

    .line 941
    .restart local v44    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 942
    move-object/from16 v0, p3

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 943
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 947
    .end local v44    # "_result":Ljava/lang/String;
    :sswitch_3c
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 949
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 950
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearDeviceOwner(Ljava/lang/String;)V

    .line 951
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 952
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 956
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_3d
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 958
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3a

    .line 959
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 965
    .local v5, "_arg0":Landroid/content/ComponentName;
    :goto_3b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 967
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 968
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v44

    .line 969
    .local v44, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 970
    if-eqz v44, :cond_3b

    const/4 v4, 0x1

    :goto_3c
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 971
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 962
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v44    # "_result":Z
    :cond_3a
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_3b

    .line 970
    .restart local v6    # "_arg1":Ljava/lang/String;
    .restart local v7    # "_arg2":I
    .restart local v44    # "_result":Z
    :cond_3b
    const/4 v4, 0x0

    goto :goto_3c

    .line 975
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v44    # "_result":Z
    :sswitch_3e
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 977
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 978
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getProfileOwner(I)Landroid/content/ComponentName;

    move-result-object v44

    .line 979
    .local v44, "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 980
    if-eqz v44, :cond_3c

    .line 981
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 982
    const/4 v4, 0x1

    move-object/from16 v0, v44

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 987
    :goto_3d
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 985
    :cond_3c
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3d

    .line 991
    .end local v5    # "_arg0":I
    .end local v44    # "_result":Landroid/content/ComponentName;
    :sswitch_3f
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 993
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 994
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getProfileOwnerName(I)Ljava/lang/String;

    move-result-object v44

    .line 995
    .local v44, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 996
    move-object/from16 v0, p3

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 997
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1001
    .end local v5    # "_arg0":I
    .end local v44    # "_result":Ljava/lang/String;
    :sswitch_40
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1003
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3d

    .line 1004
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1009
    .local v5, "_arg0":Landroid/content/ComponentName;
    :goto_3e
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setProfileEnabled(Landroid/content/ComponentName;)V

    .line 1010
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1011
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1007
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :cond_3d
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_3e

    .line 1015
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_41
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1017
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3e

    .line 1018
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1024
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1025
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setProfileName(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 1026
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1027
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1021
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    :cond_3e
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_3f

    .line 1031
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_42
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1033
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3f

    .line 1034
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1039
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_40
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearProfileOwner(Landroid/content/ComponentName;)V

    .line 1040
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1041
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1037
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :cond_3f
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_40

    .line 1045
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_43
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1046
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->hasUserSetupCompleted()Z

    move-result v44

    .line 1047
    .local v44, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1048
    if-eqz v44, :cond_40

    const/4 v4, 0x1

    :goto_41
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1049
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1048
    :cond_40
    const/4 v4, 0x0

    goto :goto_41

    .line 1053
    .end local v44    # "_result":Z
    :sswitch_44
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1055
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_41

    .line 1056
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1062
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_42
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 1063
    .local v6, "_arg1":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->installCaCert(Landroid/content/ComponentName;[B)Z

    move-result v44

    .line 1064
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1065
    if-eqz v44, :cond_42

    const/4 v4, 0x1

    :goto_43
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1066
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1059
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":[B
    .end local v44    # "_result":Z
    :cond_41
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_42

    .line 1065
    .restart local v6    # "_arg1":[B
    .restart local v44    # "_result":Z
    :cond_42
    const/4 v4, 0x0

    goto :goto_43

    .line 1070
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":[B
    .end local v44    # "_result":Z
    :sswitch_45
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1072
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_43

    .line 1073
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1079
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_44
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v6

    .line 1080
    .local v6, "_arg1":[Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->uninstallCaCerts(Landroid/content/ComponentName;[Ljava/lang/String;)V

    .line 1081
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1082
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1076
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":[Ljava/lang/String;
    :cond_43
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_44

    .line 1086
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_46
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1088
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_44

    .line 1089
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1094
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_45
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->enforceCanManageCaCerts(Landroid/content/ComponentName;)V

    .line 1095
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1096
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1092
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :cond_44
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_45

    .line 1100
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_47
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_45

    .line 1103
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1109
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_46
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 1111
    .local v6, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 1113
    .local v7, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1114
    .local v8, "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->installKeyPair(Landroid/content/ComponentName;[B[BLjava/lang/String;)Z

    move-result v44

    .line 1115
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1116
    if-eqz v44, :cond_46

    const/4 v4, 0x1

    :goto_47
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1117
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1106
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":[B
    .end local v7    # "_arg2":[B
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v44    # "_result":Z
    :cond_45
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_46

    .line 1116
    .restart local v6    # "_arg1":[B
    .restart local v7    # "_arg2":[B
    .restart local v8    # "_arg3":Ljava/lang/String;
    .restart local v44    # "_result":Z
    :cond_46
    const/4 v4, 0x0

    goto :goto_47

    .line 1121
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":[B
    .end local v7    # "_arg2":[B
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v44    # "_result":Z
    :sswitch_48
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1125
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_47

    .line 1126
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 1132
    .local v6, "_arg1":Landroid/net/Uri;
    :goto_48
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1134
    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 1135
    .local v8, "_arg3":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->choosePrivateKeyAlias(ILandroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1136
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1137
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1129
    .end local v6    # "_arg1":Landroid/net/Uri;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Landroid/os/IBinder;
    :cond_47
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/net/Uri;
    goto :goto_48

    .line 1141
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Landroid/net/Uri;
    :sswitch_49
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_48

    .line 1144
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1150
    .local v5, "_arg0":Landroid/content/ComponentName;
    :goto_49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1151
    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCertInstallerPackage(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 1152
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1153
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1147
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    :cond_48
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_49

    .line 1157
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_4a
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1159
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_49

    .line 1160
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1165
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_4a
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCertInstallerPackage(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v44

    .line 1166
    .local v44, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1167
    move-object/from16 v0, p3

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1168
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1163
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v44    # "_result":Ljava/lang/String;
    :cond_49
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_4a

    .line 1172
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_4b
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1174
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4a

    .line 1175
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1181
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_4b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4b

    .line 1182
    sget-object v4, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/IntentFilter;

    .line 1188
    .local v6, "_arg1":Landroid/content/IntentFilter;
    :goto_4c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4c

    .line 1189
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 1194
    .local v7, "_arg2":Landroid/content/ComponentName;
    :goto_4d
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->addPersistentPreferredActivity(Landroid/content/ComponentName;Landroid/content/IntentFilter;Landroid/content/ComponentName;)V

    .line 1195
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1196
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1178
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Landroid/content/IntentFilter;
    .end local v7    # "_arg2":Landroid/content/ComponentName;
    :cond_4a
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_4b

    .line 1185
    :cond_4b
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/content/IntentFilter;
    goto :goto_4c

    .line 1192
    :cond_4c
    const/4 v7, 0x0

    .restart local v7    # "_arg2":Landroid/content/ComponentName;
    goto :goto_4d

    .line 1200
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Landroid/content/IntentFilter;
    .end local v7    # "_arg2":Landroid/content/ComponentName;
    :sswitch_4c
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1202
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4d

    .line 1203
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1209
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_4e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1210
    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearPackagePersistentPreferredActivities(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 1211
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1212
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1206
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    :cond_4d
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_4e

    .line 1216
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_4d
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1218
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4e

    .line 1219
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1225
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_4f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1227
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4f

    .line 1228
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    .line 1233
    .local v7, "_arg2":Landroid/os/Bundle;
    :goto_50
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1234
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1235
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1222
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Landroid/os/Bundle;
    :cond_4e
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_4f

    .line 1231
    .restart local v6    # "_arg1":Ljava/lang/String;
    :cond_4f
    const/4 v7, 0x0

    .restart local v7    # "_arg2":Landroid/os/Bundle;
    goto :goto_50

    .line 1239
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Landroid/os/Bundle;
    :sswitch_4e
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_50

    .line 1242
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1248
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1249
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v44

    .line 1250
    .local v44, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1251
    if-eqz v44, :cond_51

    .line 1252
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1253
    const/4 v4, 0x1

    move-object/from16 v0, v44

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1258
    :goto_52
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1245
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v44    # "_result":Landroid/os/Bundle;
    :cond_50
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_51

    .line 1256
    .restart local v6    # "_arg1":Ljava/lang/String;
    .restart local v44    # "_result":Landroid/os/Bundle;
    :cond_51
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_52

    .line 1262
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v44    # "_result":Landroid/os/Bundle;
    :sswitch_4f
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1264
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_52

    .line 1265
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1271
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_53

    .line 1272
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 1277
    .local v6, "_arg1":Landroid/content/ComponentName;
    :goto_54
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRestrictionsProvider(Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 1278
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1279
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1268
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Landroid/content/ComponentName;
    :cond_52
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_53

    .line 1275
    :cond_53
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/content/ComponentName;
    goto :goto_54

    .line 1283
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Landroid/content/ComponentName;
    :sswitch_50
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1285
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1286
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRestrictionsProvider(I)Landroid/content/ComponentName;

    move-result-object v44

    .line 1287
    .local v44, "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1288
    if-eqz v44, :cond_54

    .line 1289
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1290
    const/4 v4, 0x1

    move-object/from16 v0, v44

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1295
    :goto_55
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1293
    :cond_54
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_55

    .line 1299
    .end local v5    # "_arg0":I
    .end local v44    # "_result":Landroid/content/ComponentName;
    :sswitch_51
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1301
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_55

    .line 1302
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1308
    .local v5, "_arg0":Landroid/content/ComponentName;
    :goto_56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1310
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_56

    const/4 v7, 0x1

    .line 1311
    .local v7, "_arg2":Z
    :goto_57
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;Z)V

    .line 1312
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1313
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1305
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Z
    :cond_55
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_56

    .line 1310
    .restart local v6    # "_arg1":Ljava/lang/String;
    :cond_56
    const/4 v7, 0x0

    goto :goto_57

    .line 1317
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_52
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1319
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_57

    .line 1320
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1326
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_58
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_58

    .line 1327
    sget-object v4, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/IntentFilter;

    .line 1333
    .local v6, "_arg1":Landroid/content/IntentFilter;
    :goto_59
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1334
    .local v7, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->addCrossProfileIntentFilter(Landroid/content/ComponentName;Landroid/content/IntentFilter;I)V

    .line 1335
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1336
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1323
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Landroid/content/IntentFilter;
    .end local v7    # "_arg2":I
    :cond_57
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_58

    .line 1330
    :cond_58
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/content/IntentFilter;
    goto :goto_59

    .line 1340
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Landroid/content/IntentFilter;
    :sswitch_53
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1342
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_59

    .line 1343
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1348
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_5a
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearCrossProfileIntentFilters(Landroid/content/ComponentName;)V

    .line 1349
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1350
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1346
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :cond_59
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_5a

    .line 1354
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_54
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1356
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5a

    .line 1357
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1363
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_5b
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v50

    .line 1364
    .local v50, "cl":Ljava/lang/ClassLoader;
    move-object/from16 v0, p2

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v6

    .line 1365
    .local v6, "_arg1":Ljava/util/List;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPermittedAccessibilityServices(Landroid/content/ComponentName;Ljava/util/List;)Z

    move-result v44

    .line 1366
    .local v44, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1367
    if-eqz v44, :cond_5b

    const/4 v4, 0x1

    :goto_5c
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1368
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1360
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/util/List;
    .end local v44    # "_result":Z
    .end local v50    # "cl":Ljava/lang/ClassLoader;
    :cond_5a
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_5b

    .line 1367
    .restart local v6    # "_arg1":Ljava/util/List;
    .restart local v44    # "_result":Z
    .restart local v50    # "cl":Ljava/lang/ClassLoader;
    :cond_5b
    const/4 v4, 0x0

    goto :goto_5c

    .line 1372
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/util/List;
    .end local v44    # "_result":Z
    .end local v50    # "cl":Ljava/lang/ClassLoader;
    :sswitch_55
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1374
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5c

    .line 1375
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1380
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_5d
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedAccessibilityServices(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v44

    .line 1381
    .local v44, "_result":Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1382
    move-object/from16 v0, p3

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 1383
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1378
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v44    # "_result":Ljava/util/List;
    :cond_5c
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_5d

    .line 1387
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_56
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1389
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1390
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedAccessibilityServicesForUser(I)Ljava/util/List;

    move-result-object v44

    .line 1391
    .restart local v44    # "_result":Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1392
    move-object/from16 v0, p3

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 1393
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1397
    .end local v5    # "_arg0":I
    .end local v44    # "_result":Ljava/util/List;
    :sswitch_57
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1399
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5d

    .line 1400
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1406
    .local v5, "_arg0":Landroid/content/ComponentName;
    :goto_5e
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v50

    .line 1407
    .restart local v50    # "cl":Ljava/lang/ClassLoader;
    move-object/from16 v0, p2

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v6

    .line 1408
    .restart local v6    # "_arg1":Ljava/util/List;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPermittedInputMethods(Landroid/content/ComponentName;Ljava/util/List;)Z

    move-result v44

    .line 1409
    .local v44, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1410
    if-eqz v44, :cond_5e

    const/4 v4, 0x1

    :goto_5f
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1411
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1403
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/util/List;
    .end local v44    # "_result":Z
    .end local v50    # "cl":Ljava/lang/ClassLoader;
    :cond_5d
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_5e

    .line 1410
    .restart local v6    # "_arg1":Ljava/util/List;
    .restart local v44    # "_result":Z
    .restart local v50    # "cl":Ljava/lang/ClassLoader;
    :cond_5e
    const/4 v4, 0x0

    goto :goto_5f

    .line 1415
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/util/List;
    .end local v44    # "_result":Z
    .end local v50    # "cl":Ljava/lang/ClassLoader;
    :sswitch_58
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1417
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5f

    .line 1418
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1423
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_60
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedInputMethods(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v44

    .line 1424
    .local v44, "_result":Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1425
    move-object/from16 v0, p3

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 1426
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1421
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v44    # "_result":Ljava/util/List;
    :cond_5f
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_60

    .line 1430
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_59
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1431
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedInputMethodsForCurrentUser()Ljava/util/List;

    move-result-object v44

    .line 1432
    .restart local v44    # "_result":Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1433
    move-object/from16 v0, p3

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 1434
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1438
    .end local v44    # "_result":Ljava/util/List;
    :sswitch_5a
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1440
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_60

    .line 1441
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1447
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1449
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_61

    const/4 v7, 0x1

    .line 1450
    .local v7, "_arg2":Z
    :goto_62
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;Z)Z

    move-result v44

    .line 1451
    .local v44, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1452
    if-eqz v44, :cond_62

    const/4 v4, 0x1

    :goto_63
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1453
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1444
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Z
    .end local v44    # "_result":Z
    :cond_60
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_61

    .line 1449
    .restart local v6    # "_arg1":Ljava/lang/String;
    :cond_61
    const/4 v7, 0x0

    goto :goto_62

    .line 1452
    .restart local v7    # "_arg2":Z
    .restart local v44    # "_result":Z
    :cond_62
    const/4 v4, 0x0

    goto :goto_63

    .line 1457
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Z
    .end local v44    # "_result":Z
    :sswitch_5b
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1459
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_63

    .line 1460
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1466
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_64
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1467
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v44

    .line 1468
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1469
    if-eqz v44, :cond_64

    const/4 v4, 0x1

    :goto_65
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1470
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1463
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v44    # "_result":Z
    :cond_63
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_64

    .line 1469
    .restart local v6    # "_arg1":Ljava/lang/String;
    .restart local v44    # "_result":Z
    :cond_64
    const/4 v4, 0x0

    goto :goto_65

    .line 1474
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v44    # "_result":Z
    :sswitch_5c
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1476
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_65

    .line 1477
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1483
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1484
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->createUser(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/os/UserHandle;

    move-result-object v44

    .line 1485
    .local v44, "_result":Landroid/os/UserHandle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1486
    if-eqz v44, :cond_66

    .line 1487
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1488
    const/4 v4, 0x1

    move-object/from16 v0, v44

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1493
    :goto_67
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1480
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v44    # "_result":Landroid/os/UserHandle;
    :cond_65
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_66

    .line 1491
    .restart local v6    # "_arg1":Ljava/lang/String;
    .restart local v44    # "_result":Landroid/os/UserHandle;
    :cond_66
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_67

    .line 1497
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v44    # "_result":Landroid/os/UserHandle;
    :sswitch_5d
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1499
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_67

    .line 1500
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1506
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1508
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1510
    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_68

    .line 1511
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ComponentName;

    .line 1517
    .local v8, "_arg3":Landroid/content/ComponentName;
    :goto_69
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_69

    .line 1518
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    .local v9, "_arg4":Landroid/os/Bundle;
    :goto_6a
    move-object/from16 v4, p0

    .line 1523
    invoke-virtual/range {v4 .. v9}, Landroid/app/admin/IDevicePolicyManager$Stub;->createAndInitializeUser(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object v44

    .line 1524
    .restart local v44    # "_result":Landroid/os/UserHandle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1525
    if-eqz v44, :cond_6a

    .line 1526
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1527
    const/4 v4, 0x1

    move-object/from16 v0, v44

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1532
    :goto_6b
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1503
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Landroid/content/ComponentName;
    .end local v9    # "_arg4":Landroid/os/Bundle;
    .end local v44    # "_result":Landroid/os/UserHandle;
    :cond_67
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_68

    .line 1514
    .restart local v6    # "_arg1":Ljava/lang/String;
    .restart local v7    # "_arg2":Ljava/lang/String;
    :cond_68
    const/4 v8, 0x0

    .restart local v8    # "_arg3":Landroid/content/ComponentName;
    goto :goto_69

    .line 1521
    :cond_69
    const/4 v9, 0x0

    .restart local v9    # "_arg4":Landroid/os/Bundle;
    goto :goto_6a

    .line 1530
    .restart local v44    # "_result":Landroid/os/UserHandle;
    :cond_6a
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6b

    .line 1536
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Landroid/content/ComponentName;
    .end local v9    # "_arg4":Landroid/os/Bundle;
    .end local v44    # "_result":Landroid/os/UserHandle;
    :sswitch_5e
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1538
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6b

    .line 1539
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1545
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_6c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6c

    .line 1546
    sget-object v4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserHandle;

    .line 1551
    .local v6, "_arg1":Landroid/os/UserHandle;
    :goto_6d
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v44

    .line 1552
    .local v44, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1553
    if-eqz v44, :cond_6d

    const/4 v4, 0x1

    :goto_6e
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1554
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1542
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Landroid/os/UserHandle;
    .end local v44    # "_result":Z
    :cond_6b
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_6c

    .line 1549
    :cond_6c
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/os/UserHandle;
    goto :goto_6d

    .line 1553
    .restart local v44    # "_result":Z
    :cond_6d
    const/4 v4, 0x0

    goto :goto_6e

    .line 1558
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Landroid/os/UserHandle;
    .end local v44    # "_result":Z
    :sswitch_5f
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1560
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6e

    .line 1561
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1567
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_6f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6f

    .line 1568
    sget-object v4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserHandle;

    .line 1573
    .restart local v6    # "_arg1":Landroid/os/UserHandle;
    :goto_70
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->switchUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v44

    .line 1574
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1575
    if-eqz v44, :cond_70

    const/4 v4, 0x1

    :goto_71
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1576
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1564
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Landroid/os/UserHandle;
    .end local v44    # "_result":Z
    :cond_6e
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_6f

    .line 1571
    :cond_6f
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/os/UserHandle;
    goto :goto_70

    .line 1575
    .restart local v44    # "_result":Z
    :cond_70
    const/4 v4, 0x0

    goto :goto_71

    .line 1580
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Landroid/os/UserHandle;
    .end local v44    # "_result":Z
    :sswitch_60
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1582
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_71

    .line 1583
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1589
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1590
    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->enableSystemApp(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 1591
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1592
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1586
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    :cond_71
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_72

    .line 1596
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_61
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1598
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_72

    .line 1599
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1605
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_73

    .line 1606
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 1611
    .local v6, "_arg1":Landroid/content/Intent;
    :goto_74
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->enableSystemAppWithIntent(Landroid/content/ComponentName;Landroid/content/Intent;)I

    move-result v44

    .line 1612
    .local v44, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1613
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1614
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1602
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Landroid/content/Intent;
    .end local v44    # "_result":I
    :cond_72
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_73

    .line 1609
    :cond_73
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/content/Intent;
    goto :goto_74

    .line 1618
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Landroid/content/Intent;
    :sswitch_62
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1620
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_74

    .line 1621
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1627
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_75
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1629
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_75

    const/4 v7, 0x1

    .line 1630
    .local v7, "_arg2":Z
    :goto_76
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAccountManagementDisabled(Landroid/content/ComponentName;Ljava/lang/String;Z)V

    .line 1631
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1632
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1624
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Z
    :cond_74
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_75

    .line 1629
    .restart local v6    # "_arg1":Ljava/lang/String;
    :cond_75
    const/4 v7, 0x0

    goto :goto_76

    .line 1636
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_63
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1637
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAccountTypesWithManagementDisabled()[Ljava/lang/String;

    move-result-object v44

    .line 1638
    .local v44, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1639
    move-object/from16 v0, p3

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1640
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1644
    .end local v44    # "_result":[Ljava/lang/String;
    :sswitch_64
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1646
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1647
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAccountTypesWithManagementDisabledAsUser(I)[Ljava/lang/String;

    move-result-object v44

    .line 1648
    .restart local v44    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1649
    move-object/from16 v0, p3

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1650
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1654
    .end local v5    # "_arg0":I
    .end local v44    # "_result":[Ljava/lang/String;
    :sswitch_65
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1656
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_76

    .line 1657
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1663
    .local v5, "_arg0":Landroid/content/ComponentName;
    :goto_77
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v6

    .line 1664
    .local v6, "_arg1":[Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setLockTaskPackages(Landroid/content/ComponentName;[Ljava/lang/String;)V

    .line 1665
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1666
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1660
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":[Ljava/lang/String;
    :cond_76
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_77

    .line 1670
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_66
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1672
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_77

    .line 1673
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1678
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_78
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLockTaskPackages(Landroid/content/ComponentName;)[Ljava/lang/String;

    move-result-object v44

    .line 1679
    .restart local v44    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1680
    move-object/from16 v0, p3

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1681
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1676
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v44    # "_result":[Ljava/lang/String;
    :cond_77
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_78

    .line 1685
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_67
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1687
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1688
    .local v5, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->isLockTaskPermitted(Ljava/lang/String;)Z

    move-result v44

    .line 1689
    .local v44, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1690
    if-eqz v44, :cond_78

    const/4 v4, 0x1

    :goto_79
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1691
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1690
    :cond_78
    const/4 v4, 0x0

    goto :goto_79

    .line 1695
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v44    # "_result":Z
    :sswitch_68
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1697
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_79

    .line 1698
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1704
    .local v5, "_arg0":Landroid/content/ComponentName;
    :goto_7a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1706
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1707
    .local v7, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setGlobalSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    .line 1708
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1709
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1701
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    :cond_79
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_7a

    .line 1713
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_69
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1715
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7a

    .line 1716
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1722
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_7b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1724
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1725
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSecureSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    .line 1726
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1727
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1719
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    :cond_7a
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_7b

    .line 1731
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_6a
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1733
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7b

    .line 1734
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1740
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_7c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7c

    const/4 v6, 0x1

    .line 1741
    .local v6, "_arg1":Z
    :goto_7d
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMasterVolumeMuted(Landroid/content/ComponentName;Z)V

    .line 1742
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1743
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1737
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    :cond_7b
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_7c

    .line 1740
    :cond_7c
    const/4 v6, 0x0

    goto :goto_7d

    .line 1747
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_6b
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1749
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7d

    .line 1750
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1755
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_7e
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->isMasterVolumeMuted(Landroid/content/ComponentName;)Z

    move-result v44

    .line 1756
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1757
    if-eqz v44, :cond_7e

    const/4 v4, 0x1

    :goto_7f
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1758
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1753
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v44    # "_result":Z
    :cond_7d
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_7e

    .line 1757
    .restart local v44    # "_result":Z
    :cond_7e
    const/4 v4, 0x0

    goto :goto_7f

    .line 1762
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v44    # "_result":Z
    :sswitch_6c
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1764
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7f

    const/4 v5, 0x1

    .line 1766
    .local v5, "_arg0":Z
    :goto_80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1768
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1769
    .local v7, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->notifyLockTaskModeChanged(ZLjava/lang/String;I)V

    .line 1770
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1771
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1764
    .end local v5    # "_arg0":Z
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    :cond_7f
    const/4 v5, 0x0

    goto :goto_80

    .line 1775
    :sswitch_6d
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1777
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_80

    .line 1778
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1784
    .local v5, "_arg0":Landroid/content/ComponentName;
    :goto_81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1786
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_81

    const/4 v7, 0x1

    .line 1787
    .local v7, "_arg2":Z
    :goto_82
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;Z)V

    .line 1788
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1789
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1781
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Z
    :cond_80
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_81

    .line 1786
    .restart local v6    # "_arg1":Ljava/lang/String;
    :cond_81
    const/4 v7, 0x0

    goto :goto_82

    .line 1793
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_6e
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1795
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_82

    .line 1796
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1802
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_83
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1803
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v44

    .line 1804
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1805
    if-eqz v44, :cond_83

    const/4 v4, 0x1

    :goto_84
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1806
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1799
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v44    # "_result":Z
    :cond_82
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_83

    .line 1805
    .restart local v6    # "_arg1":Ljava/lang/String;
    .restart local v44    # "_result":Z
    :cond_83
    const/4 v4, 0x0

    goto :goto_84

    .line 1810
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v44    # "_result":Z
    :sswitch_6f
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1812
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_84

    .line 1813
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1819
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_85
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_85

    const/4 v6, 0x1

    .line 1820
    .local v6, "_arg1":Z
    :goto_86
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCrossProfileCallerIdDisabled(Landroid/content/ComponentName;Z)V

    .line 1821
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1822
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1816
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    :cond_84
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_85

    .line 1819
    :cond_85
    const/4 v6, 0x0

    goto :goto_86

    .line 1826
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_70
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1828
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_86

    .line 1829
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1834
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_87
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileCallerIdDisabled(Landroid/content/ComponentName;)Z

    move-result v44

    .line 1835
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1836
    if-eqz v44, :cond_87

    const/4 v4, 0x1

    :goto_88
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1837
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1832
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v44    # "_result":Z
    :cond_86
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_87

    .line 1836
    .restart local v44    # "_result":Z
    :cond_87
    const/4 v4, 0x0

    goto :goto_88

    .line 1841
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v44    # "_result":Z
    :sswitch_71
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1843
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1844
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileCallerIdDisabledForUser(I)Z

    move-result v44

    .line 1845
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1846
    if-eqz v44, :cond_88

    const/4 v4, 0x1

    :goto_89
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1847
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1846
    :cond_88
    const/4 v4, 0x0

    goto :goto_89

    .line 1851
    .end local v5    # "_arg0":I
    .end local v44    # "_result":Z
    :sswitch_72
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1853
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1855
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 1857
    .restart local v18    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_89

    .line 1858
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 1863
    .local v7, "_arg2":Landroid/content/Intent;
    :goto_8a
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v5, v1, v2, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->startManagedQuickContact(Ljava/lang/String;JLandroid/content/Intent;)V

    .line 1864
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1865
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1861
    .end local v7    # "_arg2":Landroid/content/Intent;
    :cond_89
    const/4 v7, 0x0

    .restart local v7    # "_arg2":Landroid/content/Intent;
    goto :goto_8a

    .line 1869
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg2":Landroid/content/Intent;
    .end local v18    # "_arg1":J
    :sswitch_73
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1871
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8a

    .line 1872
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1878
    .local v5, "_arg0":Landroid/content/ComponentName;
    :goto_8b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8b

    const/4 v6, 0x1

    .line 1879
    .restart local v6    # "_arg1":Z
    :goto_8c
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setBluetoothContactSharingDisabled(Landroid/content/ComponentName;Z)V

    .line 1880
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1881
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1875
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    :cond_8a
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_8b

    .line 1878
    :cond_8b
    const/4 v6, 0x0

    goto :goto_8c

    .line 1885
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_74
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1887
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8c

    .line 1888
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1893
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_8d
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getBluetoothContactSharingDisabled(Landroid/content/ComponentName;)Z

    move-result v44

    .line 1894
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1895
    if-eqz v44, :cond_8d

    const/4 v4, 0x1

    :goto_8e
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1896
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1891
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v44    # "_result":Z
    :cond_8c
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_8d

    .line 1895
    .restart local v44    # "_result":Z
    :cond_8d
    const/4 v4, 0x0

    goto :goto_8e

    .line 1900
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v44    # "_result":Z
    :sswitch_75
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1902
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1903
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getBluetoothContactSharingDisabledForUser(I)Z

    move-result v44

    .line 1904
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1905
    if-eqz v44, :cond_8e

    const/4 v4, 0x1

    :goto_8f
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1906
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1905
    :cond_8e
    const/4 v4, 0x0

    goto :goto_8f

    .line 1910
    .end local v5    # "_arg0":I
    .end local v44    # "_result":Z
    :sswitch_76
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1912
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8f

    .line 1913
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1919
    .local v5, "_arg0":Landroid/content/ComponentName;
    :goto_90
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_90

    .line 1920
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 1926
    .local v6, "_arg1":Landroid/content/ComponentName;
    :goto_91
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_91

    .line 1927
    sget-object v4, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PersistableBundle;

    .line 1932
    .local v7, "_arg2":Landroid/os/PersistableBundle;
    :goto_92
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;)V

    .line 1933
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1934
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1916
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Landroid/content/ComponentName;
    .end local v7    # "_arg2":Landroid/os/PersistableBundle;
    :cond_8f
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_90

    .line 1923
    :cond_90
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/content/ComponentName;
    goto :goto_91

    .line 1930
    :cond_91
    const/4 v7, 0x0

    .restart local v7    # "_arg2":Landroid/os/PersistableBundle;
    goto :goto_92

    .line 1938
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Landroid/content/ComponentName;
    .end local v7    # "_arg2":Landroid/os/PersistableBundle;
    :sswitch_77
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1940
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_92

    .line 1941
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1947
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_93
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_93

    .line 1948
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 1954
    .restart local v6    # "_arg1":Landroid/content/ComponentName;
    :goto_94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1955
    .local v7, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v47

    .line 1956
    .local v47, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1957
    move-object/from16 v0, p3

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1958
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1944
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Landroid/content/ComponentName;
    .end local v7    # "_arg2":I
    .end local v47    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    :cond_92
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_93

    .line 1951
    :cond_93
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/content/ComponentName;
    goto :goto_94

    .line 1962
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Landroid/content/ComponentName;
    :sswitch_78
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1964
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_94

    .line 1965
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1971
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_95
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1972
    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->addCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v44

    .line 1973
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1974
    if-eqz v44, :cond_95

    const/4 v4, 0x1

    :goto_96
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1975
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1968
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v44    # "_result":Z
    :cond_94
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_95

    .line 1974
    .restart local v6    # "_arg1":Ljava/lang/String;
    .restart local v44    # "_result":Z
    :cond_95
    const/4 v4, 0x0

    goto :goto_96

    .line 1979
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v44    # "_result":Z
    :sswitch_79
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1981
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_96

    .line 1982
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1988
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_97
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1989
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v44

    .line 1990
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1991
    if-eqz v44, :cond_97

    const/4 v4, 0x1

    :goto_98
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1992
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1985
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v44    # "_result":Z
    :cond_96
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_97

    .line 1991
    .restart local v6    # "_arg1":Ljava/lang/String;
    .restart local v44    # "_result":Z
    :cond_97
    const/4 v4, 0x0

    goto :goto_98

    .line 1996
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v44    # "_result":Z
    :sswitch_7a
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1998
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_98

    .line 1999
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2004
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_99
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileWidgetProviders(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v49

    .line 2005
    .local v49, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2006
    move-object/from16 v0, p3

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2007
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2002
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v49    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_98
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_99

    .line 2011
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_7b
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2013
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_99

    .line 2014
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2020
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_9a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9a

    const/4 v6, 0x1

    .line 2021
    .local v6, "_arg1":Z
    :goto_9b
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAutoTimeRequired(Landroid/content/ComponentName;Z)V

    .line 2022
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2023
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2017
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    :cond_99
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_9a

    .line 2020
    :cond_9a
    const/4 v6, 0x0

    goto :goto_9b

    .line 2027
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_7c
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2028
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAutoTimeRequired()Z

    move-result v44

    .line 2029
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2030
    if-eqz v44, :cond_9b

    const/4 v4, 0x1

    :goto_9c
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2031
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2030
    :cond_9b
    const/4 v4, 0x0

    goto :goto_9c

    .line 2035
    .end local v44    # "_result":Z
    :sswitch_7d
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2037
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9c

    .line 2038
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2044
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_9d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2045
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isRemovingAdmin(Landroid/content/ComponentName;I)Z

    move-result v44

    .line 2046
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2047
    if-eqz v44, :cond_9d

    const/4 v4, 0x1

    :goto_9e
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2048
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2041
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":Z
    :cond_9c
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_9d

    .line 2047
    .restart local v6    # "_arg1":I
    .restart local v44    # "_result":Z
    :cond_9d
    const/4 v4, 0x0

    goto :goto_9e

    .line 2052
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":Z
    :sswitch_7e
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2054
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9e

    .line 2055
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2060
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_9f
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUserEnabled(Landroid/content/ComponentName;)Z

    move-result v44

    .line 2061
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2062
    if-eqz v44, :cond_9f

    const/4 v4, 0x1

    :goto_a0
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2063
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2058
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v44    # "_result":Z
    :cond_9e
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_9f

    .line 2062
    .restart local v44    # "_result":Z
    :cond_9f
    const/4 v4, 0x0

    goto :goto_a0

    .line 2067
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v44    # "_result":Z
    :sswitch_7f
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2069
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2070
    .local v5, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->isDeviceInitializer(Ljava/lang/String;)Z

    move-result v44

    .line 2071
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2072
    if-eqz v44, :cond_a0

    const/4 v4, 0x1

    :goto_a1
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2073
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2072
    :cond_a0
    const/4 v4, 0x0

    goto :goto_a1

    .line 2077
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v44    # "_result":Z
    :sswitch_80
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2079
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a1

    .line 2080
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2085
    .local v5, "_arg0":Landroid/content/ComponentName;
    :goto_a2
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearDeviceInitializer(Landroid/content/ComponentName;)V

    .line 2086
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2087
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2083
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :cond_a1
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_a2

    .line 2091
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_81
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2093
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a2

    .line 2094
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2100
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_a3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a3

    .line 2101
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 2106
    .local v6, "_arg1":Landroid/content/ComponentName;
    :goto_a4
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDeviceInitializer(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z

    move-result v44

    .line 2107
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2108
    if-eqz v44, :cond_a4

    const/4 v4, 0x1

    :goto_a5
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2109
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2097
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Landroid/content/ComponentName;
    .end local v44    # "_result":Z
    :cond_a2
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_a3

    .line 2104
    :cond_a3
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/content/ComponentName;
    goto :goto_a4

    .line 2108
    .restart local v44    # "_result":Z
    :cond_a4
    const/4 v4, 0x0

    goto :goto_a5

    .line 2113
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Landroid/content/ComponentName;
    .end local v44    # "_result":Z
    :sswitch_82
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2114
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceInitializer()Ljava/lang/String;

    move-result-object v44

    .line 2115
    .local v44, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2116
    move-object/from16 v0, p3

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2117
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2121
    .end local v44    # "_result":Ljava/lang/String;
    :sswitch_83
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2122
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceInitializerComponent()Landroid/content/ComponentName;

    move-result-object v44

    .line 2123
    .local v44, "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2124
    if-eqz v44, :cond_a5

    .line 2125
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2126
    const/4 v4, 0x1

    move-object/from16 v0, v44

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2131
    :goto_a6
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2129
    :cond_a5
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a6

    .line 2135
    .end local v44    # "_result":Landroid/content/ComponentName;
    :sswitch_84
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a6

    .line 2138
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2144
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_a7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a7

    .line 2145
    sget-object v4, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    .line 2150
    .local v6, "_arg1":Landroid/graphics/Bitmap;
    :goto_a8
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUserIcon(Landroid/content/ComponentName;Landroid/graphics/Bitmap;)V

    .line 2151
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2152
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2141
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Landroid/graphics/Bitmap;
    :cond_a6
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_a7

    .line 2148
    :cond_a7
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/graphics/Bitmap;
    goto :goto_a8

    .line 2156
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Landroid/graphics/Bitmap;
    :sswitch_85
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2158
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a8

    .line 2159
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2165
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_a9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a9

    .line 2166
    sget-object v4, Landroid/app/admin/SystemUpdatePolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/admin/SystemUpdatePolicy;

    .line 2171
    .local v6, "_arg1":Landroid/app/admin/SystemUpdatePolicy;
    :goto_aa
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSystemUpdatePolicy(Landroid/content/ComponentName;Landroid/app/admin/SystemUpdatePolicy;)V

    .line 2172
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2173
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2162
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Landroid/app/admin/SystemUpdatePolicy;
    :cond_a8
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_a9

    .line 2169
    :cond_a9
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/app/admin/SystemUpdatePolicy;
    goto :goto_aa

    .line 2177
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Landroid/app/admin/SystemUpdatePolicy;
    :sswitch_86
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2178
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getSystemUpdatePolicy()Landroid/app/admin/SystemUpdatePolicy;

    move-result-object v44

    .line 2179
    .local v44, "_result":Landroid/app/admin/SystemUpdatePolicy;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2180
    if-eqz v44, :cond_aa

    .line 2181
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2182
    const/4 v4, 0x1

    move-object/from16 v0, v44

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/app/admin/SystemUpdatePolicy;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2187
    :goto_ab
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2185
    :cond_aa
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_ab

    .line 2191
    .end local v44    # "_result":Landroid/app/admin/SystemUpdatePolicy;
    :sswitch_87
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_ab

    .line 2194
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2200
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_ac
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_ac

    const/4 v6, 0x1

    .line 2201
    .local v6, "_arg1":Z
    :goto_ad
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setKeyguardDisabled(Landroid/content/ComponentName;Z)Z

    move-result v44

    .line 2202
    .local v44, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2203
    if-eqz v44, :cond_ad

    const/4 v4, 0x1

    :goto_ae
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2204
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2197
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    .end local v44    # "_result":Z
    :cond_ab
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_ac

    .line 2200
    :cond_ac
    const/4 v6, 0x0

    goto :goto_ad

    .line 2203
    .restart local v6    # "_arg1":Z
    .restart local v44    # "_result":Z
    :cond_ad
    const/4 v4, 0x0

    goto :goto_ae

    .line 2208
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    .end local v44    # "_result":Z
    :sswitch_88
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2210
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_ae

    .line 2211
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2217
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_af
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_af

    const/4 v6, 0x1

    .line 2218
    .restart local v6    # "_arg1":Z
    :goto_b0
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setStatusBarDisabled(Landroid/content/ComponentName;Z)Z

    move-result v44

    .line 2219
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2220
    if-eqz v44, :cond_b0

    const/4 v4, 0x1

    :goto_b1
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2221
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2214
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    .end local v44    # "_result":Z
    :cond_ae
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_af

    .line 2217
    :cond_af
    const/4 v6, 0x0

    goto :goto_b0

    .line 2220
    .restart local v6    # "_arg1":Z
    .restart local v44    # "_result":Z
    :cond_b0
    const/4 v4, 0x0

    goto :goto_b1

    .line 2225
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    .end local v44    # "_result":Z
    :sswitch_89
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2226
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDoNotAskCredentialsOnBoot()Z

    move-result v44

    .line 2227
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2228
    if-eqz v44, :cond_b1

    const/4 v4, 0x1

    :goto_b2
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2229
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2228
    :cond_b1
    const/4 v4, 0x0

    goto :goto_b2

    .line 2233
    .end local v44    # "_result":Z
    :sswitch_8a
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2235
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 2236
    .local v16, "_arg0":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->notifyPendingSystemUpdate(J)V

    .line 2237
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2238
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2242
    .end local v16    # "_arg0":J
    :sswitch_8b
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2244
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b2

    .line 2245
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2251
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_b3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2252
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPermissionPolicy(Landroid/content/ComponentName;I)V

    .line 2253
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2254
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2248
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    :cond_b2
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_b3

    .line 2258
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_8c
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2260
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b3

    .line 2261
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2266
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_b4
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermissionPolicy(Landroid/content/ComponentName;)I

    move-result v44

    .line 2267
    .local v44, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2268
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2269
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2264
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v44    # "_result":I
    :cond_b3
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_b4

    .line 2273
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_8d
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2275
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b4

    .line 2276
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2282
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_b5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 2284
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2286
    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2287
    .local v8, "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v44

    .line 2288
    .local v44, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2289
    if-eqz v44, :cond_b5

    const/4 v4, 0x1

    :goto_b6
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2290
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2279
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":I
    .end local v44    # "_result":Z
    :cond_b4
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_b5

    .line 2289
    .restart local v6    # "_arg1":Ljava/lang/String;
    .restart local v7    # "_arg2":Ljava/lang/String;
    .restart local v8    # "_arg3":I
    .restart local v44    # "_result":Z
    :cond_b5
    const/4 v4, 0x0

    goto :goto_b6

    .line 2294
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":I
    .end local v44    # "_result":Z
    :sswitch_8e
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2296
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b6

    .line 2297
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2303
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_b7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 2305
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2306
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)I

    move-result v44

    .line 2307
    .local v44, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2308
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2309
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2300
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v44    # "_result":I
    :cond_b6
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_b7

    .line 2313
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_8f
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2315
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b7

    .line 2316
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2321
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_b8
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->wipeExternalSdCard(Landroid/content/ComponentName;)V

    .line 2322
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2323
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2319
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :cond_b7
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_b8

    .line 2327
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_90
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2329
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b8

    .line 2330
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2336
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_b9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2337
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->releasePolicies(Landroid/content/ComponentName;I)V

    .line 2338
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2339
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2333
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    :cond_b8
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_b9

    .line 2343
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_91
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2345
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b9

    .line 2346
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2352
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_ba
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_ba

    const/4 v6, 0x1

    .line 2354
    .local v6, "_arg1":Z
    :goto_bb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2355
    .local v7, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSdcardEncryption(Landroid/content/ComponentName;ZI)I

    move-result v44

    .line 2356
    .restart local v44    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2357
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2358
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2349
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":I
    .end local v44    # "_result":I
    :cond_b9
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_ba

    .line 2352
    :cond_ba
    const/4 v6, 0x0

    goto :goto_bb

    .line 2362
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_92
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2364
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_bb

    .line 2365
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2371
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_bc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2372
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getSdcardEncryption(Landroid/content/ComponentName;I)Z

    move-result v44

    .line 2373
    .local v44, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2374
    if-eqz v44, :cond_bc

    const/4 v4, 0x1

    :goto_bd
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2375
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2368
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":Z
    :cond_bb
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_bc

    .line 2374
    .restart local v6    # "_arg1":I
    .restart local v44    # "_result":Z
    :cond_bc
    const/4 v4, 0x0

    goto :goto_bd

    .line 2379
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":Z
    :sswitch_93
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2381
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2382
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getSdcardEncryptionStatus(I)I

    move-result v44

    .line 2383
    .local v44, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2384
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2385
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2389
    .end local v5    # "_arg0":I
    .end local v44    # "_result":I
    :sswitch_94
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2391
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_bd

    .line 2392
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2398
    .local v5, "_arg0":Landroid/content/ComponentName;
    :goto_be
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2399
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isRecoveryPasswordSaved(Landroid/content/ComponentName;I)Z

    move-result v44

    .line 2400
    .local v44, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2401
    if-eqz v44, :cond_be

    const/4 v4, 0x1

    :goto_bf
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2402
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2395
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":Z
    :cond_bd
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_be

    .line 2401
    .restart local v6    # "_arg1":I
    .restart local v44    # "_result":Z
    :cond_be
    const/4 v4, 0x0

    goto :goto_bf

    .line 2406
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":Z
    :sswitch_95
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2408
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_bf

    .line 2409
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2415
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_c0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 2417
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2418
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->saveRecoveryPassword(Landroid/content/ComponentName;Ljava/lang/String;I)V

    .line 2419
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2420
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2412
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    :cond_bf
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_c0

    .line 2424
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_96
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2426
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c0

    .line 2427
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2433
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_c1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c1

    const/4 v6, 0x1

    .line 2435
    .local v6, "_arg1":Z
    :goto_c2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2436
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSimplePasswordRestricted(Landroid/content/ComponentName;ZI)V

    .line 2437
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2438
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2430
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":I
    :cond_c0
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_c1

    .line 2433
    :cond_c1
    const/4 v6, 0x0

    goto :goto_c2

    .line 2442
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_97
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2444
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c2

    .line 2445
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2451
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_c3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2452
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isSimplePasswordRestricted(Landroid/content/ComponentName;I)Z

    move-result v44

    .line 2453
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2454
    if-eqz v44, :cond_c3

    const/4 v4, 0x1

    :goto_c4
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2455
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2448
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":Z
    :cond_c2
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_c3

    .line 2454
    .restart local v6    # "_arg1":I
    .restart local v44    # "_result":Z
    :cond_c3
    const/4 v4, 0x0

    goto :goto_c4

    .line 2459
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":Z
    :sswitch_98
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2461
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2462
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->isOtpLockRemote(I)Z

    move-result v44

    .line 2463
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2464
    if-eqz v44, :cond_c4

    const/4 v4, 0x1

    :goto_c5
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2465
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2464
    :cond_c4
    const/4 v4, 0x0

    goto :goto_c5

    .line 2469
    .end local v5    # "_arg0":I
    .end local v44    # "_result":Z
    :sswitch_99
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2471
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2472
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getOtpMsg(I)Ljava/lang/String;

    move-result-object v44

    .line 2473
    .local v44, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2474
    move-object/from16 v0, p3

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2475
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2479
    .end local v5    # "_arg0":I
    .end local v44    # "_result":Ljava/lang/String;
    :sswitch_9a
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2481
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2482
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getOtpPhoneNumber(I)Ljava/lang/String;

    move-result-object v44

    .line 2483
    .restart local v44    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2484
    move-object/from16 v0, p3

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2485
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2489
    .end local v5    # "_arg0":I
    .end local v44    # "_result":Ljava/lang/String;
    :sswitch_9b
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2491
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2492
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->isOtpLockActive(I)Z

    move-result v44

    .line 2493
    .local v44, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2494
    if-eqz v44, :cond_c5

    const/4 v4, 0x1

    :goto_c6
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2495
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2494
    :cond_c5
    const/4 v4, 0x0

    goto :goto_c6

    .line 2499
    .end local v5    # "_arg0":I
    .end local v44    # "_result":Z
    :sswitch_9c
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2501
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c6

    .line 2502
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2508
    .local v5, "_arg0":Landroid/content/ComponentName;
    :goto_c7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 2510
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2512
    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2513
    .local v8, "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->lockNowOtp(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v44

    .line 2514
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2515
    if-eqz v44, :cond_c7

    const/4 v4, 0x1

    :goto_c8
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2516
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2505
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v44    # "_result":Z
    :cond_c6
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_c7

    .line 2515
    .restart local v6    # "_arg1":Ljava/lang/String;
    .restart local v7    # "_arg2":Ljava/lang/String;
    .restart local v8    # "_arg3":Ljava/lang/String;
    .restart local v44    # "_result":Z
    :cond_c7
    const/4 v4, 0x0

    goto :goto_c8

    .line 2520
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v44    # "_result":Z
    :sswitch_9d
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2522
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c8

    .line 2523
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2529
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_c9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 2530
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->unlockNowOtp(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v44

    .line 2531
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2532
    if-eqz v44, :cond_c9

    const/4 v4, 0x1

    :goto_ca
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2533
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2526
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v44    # "_result":Z
    :cond_c8
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_c9

    .line 2532
    .restart local v6    # "_arg1":Ljava/lang/String;
    .restart local v44    # "_result":Z
    :cond_c9
    const/4 v4, 0x0

    goto :goto_ca

    .line 2537
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v44    # "_result":Z
    :sswitch_9e
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2539
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_ca

    .line 2540
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2546
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_cb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 2548
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2549
    .local v7, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->isApplicationDisabled(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v44

    .line 2550
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2551
    if-eqz v44, :cond_cb

    const/4 v4, 0x1

    :goto_cc
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2552
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2543
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v44    # "_result":Z
    :cond_ca
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_cb

    .line 2551
    .restart local v6    # "_arg1":Ljava/lang/String;
    .restart local v7    # "_arg2":I
    .restart local v44    # "_result":Z
    :cond_cb
    const/4 v4, 0x0

    goto :goto_cc

    .line 2556
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v44    # "_result":Z
    :sswitch_9f
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2558
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_cc

    .line 2559
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2565
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_cd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v6

    .line 2567
    .local v6, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2569
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2570
    .local v8, "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->addApplicationsToList(Landroid/content/ComponentName;[Ljava/lang/String;II)V

    .line 2571
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2572
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2562
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":[Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    :cond_cc
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_cd

    .line 2576
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_a0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2578
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_cd

    .line 2579
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2585
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_ce
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v6

    .line 2587
    .restart local v6    # "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2589
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2590
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeApplicationsFromList(Landroid/content/ComponentName;[Ljava/lang/String;II)V

    .line 2591
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2592
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2582
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":[Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    :cond_cd
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_ce

    .line 2596
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_a1
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2598
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_ce

    .line 2599
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2605
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_cf
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2607
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2608
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeAllApplicationsFromList(Landroid/content/ComponentName;II)V

    .line 2609
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2610
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2602
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    :cond_ce
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_cf

    .line 2614
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_a2
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2616
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_cf

    .line 2617
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2623
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_d0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 2625
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2627
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2628
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->isApplicationListed(Landroid/content/ComponentName;Ljava/lang/String;II)Z

    move-result v44

    .line 2629
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2630
    if-eqz v44, :cond_d0

    const/4 v4, 0x1

    :goto_d1
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2631
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2620
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v44    # "_result":Z
    :cond_cf
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_d0

    .line 2630
    .restart local v6    # "_arg1":Ljava/lang/String;
    .restart local v7    # "_arg2":I
    .restart local v8    # "_arg3":I
    .restart local v44    # "_result":Z
    :cond_d0
    const/4 v4, 0x0

    goto :goto_d1

    .line 2635
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v44    # "_result":Z
    :sswitch_a3
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2637
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d1

    .line 2638
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2644
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_d2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 2646
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2647
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->shouldBeInstallationDisabled(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v44

    .line 2648
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2649
    if-eqz v44, :cond_d2

    const/4 v4, 0x1

    :goto_d3
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2650
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2641
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v44    # "_result":Z
    :cond_d1
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_d2

    .line 2649
    .restart local v6    # "_arg1":Ljava/lang/String;
    .restart local v7    # "_arg2":I
    .restart local v44    # "_result":Z
    :cond_d2
    const/4 v4, 0x0

    goto :goto_d3

    .line 2654
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v44    # "_result":Z
    :sswitch_a4
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2656
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d3

    .line 2657
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2663
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_d4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 2665
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2666
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->shouldBeUninstallationDisabled(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v44

    .line 2667
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2668
    if-eqz v44, :cond_d4

    const/4 v4, 0x1

    :goto_d5
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2669
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2660
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v44    # "_result":Z
    :cond_d3
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_d4

    .line 2668
    .restart local v6    # "_arg1":Ljava/lang/String;
    .restart local v7    # "_arg2":I
    .restart local v44    # "_result":Z
    :cond_d4
    const/4 v4, 0x0

    goto :goto_d5

    .line 2673
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v44    # "_result":Z
    :sswitch_a5
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2675
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d5

    .line 2676
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2682
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_d6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d6

    const/4 v6, 0x1

    .line 2684
    .local v6, "_arg1":Z
    :goto_d7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2685
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setBrowserDisabled(Landroid/content/ComponentName;ZI)V

    .line 2686
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2687
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2679
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":I
    :cond_d5
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_d6

    .line 2682
    :cond_d6
    const/4 v6, 0x0

    goto :goto_d7

    .line 2691
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_a6
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2693
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d7

    .line 2694
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2700
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_d8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2701
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isBrowserDisabled(Landroid/content/ComponentName;I)Z

    move-result v44

    .line 2702
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2703
    if-eqz v44, :cond_d8

    const/4 v4, 0x1

    :goto_d9
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2704
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2697
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":Z
    :cond_d7
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_d8

    .line 2703
    .restart local v6    # "_arg1":I
    .restart local v44    # "_result":Z
    :cond_d8
    const/4 v4, 0x0

    goto :goto_d9

    .line 2708
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":Z
    :sswitch_a7
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2710
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d9

    .line 2711
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2717
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_da
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_da

    const/4 v6, 0x1

    .line 2718
    .local v6, "_arg1":Z
    :goto_db
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setInfraredDisabled(Landroid/content/ComponentName;Z)V

    .line 2719
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2720
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2714
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    :cond_d9
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_da

    .line 2717
    :cond_da
    const/4 v6, 0x0

    goto :goto_db

    .line 2724
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_a8
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2726
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_db

    .line 2727
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2732
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_dc
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getInfraredDisabled(Landroid/content/ComponentName;)Z

    move-result v44

    .line 2733
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2734
    if-eqz v44, :cond_dc

    const/4 v4, 0x1

    :goto_dd
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2735
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2730
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v44    # "_result":Z
    :cond_db
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_dc

    .line 2734
    .restart local v44    # "_result":Z
    :cond_dc
    const/4 v4, 0x0

    goto :goto_dd

    .line 2739
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v44    # "_result":Z
    :sswitch_a9
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2741
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2742
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportSuccessfulRecoveryPasswordAttempt(I)V

    .line 2743
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2744
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2748
    .end local v5    # "_arg0":I
    :sswitch_aa
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2750
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_dd

    .line 2751
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2757
    .local v5, "_arg0":Landroid/content/ComponentName;
    :goto_de
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_de

    const/4 v6, 0x1

    .line 2759
    .restart local v6    # "_arg1":Z
    :goto_df
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2760
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMountingExternalStorageDisabled(Landroid/content/ComponentName;ZI)V

    .line 2761
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2762
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2754
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":I
    :cond_dd
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_de

    .line 2757
    :cond_de
    const/4 v6, 0x0

    goto :goto_df

    .line 2766
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_ab
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2768
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_df

    .line 2769
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2775
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_e0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2776
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isMountingExternalStorageDisabled(Landroid/content/ComponentName;I)Z

    move-result v44

    .line 2777
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2778
    if-eqz v44, :cond_e0

    const/4 v4, 0x1

    :goto_e1
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2779
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2772
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":Z
    :cond_df
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_e0

    .line 2778
    .restart local v6    # "_arg1":I
    .restart local v44    # "_result":Z
    :cond_e0
    const/4 v4, 0x0

    goto :goto_e1

    .line 2783
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":Z
    :sswitch_ac
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2785
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e1

    .line 2786
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2792
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_e2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e2

    const/4 v6, 0x1

    .line 2794
    .local v6, "_arg1":Z
    :goto_e3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2795
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setWifiDisabled(Landroid/content/ComponentName;ZI)V

    .line 2796
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2797
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2789
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":I
    :cond_e1
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_e2

    .line 2792
    :cond_e2
    const/4 v6, 0x0

    goto :goto_e3

    .line 2801
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_ad
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2803
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e3

    .line 2804
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2810
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_e4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2811
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isWifiDisabled(Landroid/content/ComponentName;I)Z

    move-result v44

    .line 2812
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2813
    if-eqz v44, :cond_e4

    const/4 v4, 0x1

    :goto_e5
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2814
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2807
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":Z
    :cond_e3
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_e4

    .line 2813
    .restart local v6    # "_arg1":I
    .restart local v44    # "_result":Z
    :cond_e4
    const/4 v4, 0x0

    goto :goto_e5

    .line 2818
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":Z
    :sswitch_ae
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2820
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e5

    .line 2821
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2827
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_e6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2829
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2830
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setBluetoothEnabledProfile(Landroid/content/ComponentName;II)V

    .line 2831
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2832
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2824
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    :cond_e5
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_e6

    .line 2836
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_af
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2838
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e6

    .line 2839
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2845
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_e7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2846
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getBluetoothEnabledProfile(Landroid/content/ComponentName;I)I

    move-result v44

    .line 2847
    .local v44, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2848
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2849
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2842
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":I
    :cond_e6
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_e7

    .line 2853
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_b0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2855
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e7

    .line 2856
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2862
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_e8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e8

    const/4 v6, 0x1

    .line 2863
    .local v6, "_arg1":Z
    :goto_e9
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setTetheringDisabled(Landroid/content/ComponentName;Z)V

    .line 2864
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2865
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2859
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    :cond_e7
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_e8

    .line 2862
    :cond_e8
    const/4 v6, 0x0

    goto :goto_e9

    .line 2869
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_b1
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2871
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e9

    .line 2872
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2877
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_ea
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->isTetheringDisabled(Landroid/content/ComponentName;)Z

    move-result v44

    .line 2878
    .local v44, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2879
    if-eqz v44, :cond_ea

    const/4 v4, 0x1

    :goto_eb
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2880
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2875
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v44    # "_result":Z
    :cond_e9
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_ea

    .line 2879
    .restart local v44    # "_result":Z
    :cond_ea
    const/4 v4, 0x0

    goto :goto_eb

    .line 2884
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v44    # "_result":Z
    :sswitch_b2
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2886
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_eb

    .line 2887
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2893
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_ec
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_ec

    const/4 v6, 0x1

    .line 2894
    .restart local v6    # "_arg1":Z
    :goto_ed
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setLocalDesktopSyncDisabled(Landroid/content/ComponentName;Z)V

    .line 2895
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2896
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2890
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    :cond_eb
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_ec

    .line 2893
    :cond_ec
    const/4 v6, 0x0

    goto :goto_ed

    .line 2900
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_b3
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2902
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_ed

    .line 2903
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2908
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_ee
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->isLocalDesktopSyncDisabled(Landroid/content/ComponentName;)Z

    move-result v44

    .line 2909
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2910
    if-eqz v44, :cond_ee

    const/4 v4, 0x1

    :goto_ef
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2911
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2906
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v44    # "_result":Z
    :cond_ed
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_ee

    .line 2910
    .restart local v44    # "_result":Z
    :cond_ee
    const/4 v4, 0x0

    goto :goto_ef

    .line 2915
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v44    # "_result":Z
    :sswitch_b4
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2917
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_ef

    .line 2918
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2924
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_f0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f0

    const/4 v6, 0x1

    .line 2925
    .restart local v6    # "_arg1":Z
    :goto_f1
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUsbDebuggingDisabled(Landroid/content/ComponentName;Z)V

    .line 2926
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2927
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2921
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    :cond_ef
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_f0

    .line 2924
    :cond_f0
    const/4 v6, 0x0

    goto :goto_f1

    .line 2931
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_b5
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2933
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f1

    .line 2934
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2939
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_f2
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->isUsbDebuggingDisabled(Landroid/content/ComponentName;)Z

    move-result v44

    .line 2940
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2941
    if-eqz v44, :cond_f2

    const/4 v4, 0x1

    :goto_f3
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2942
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2937
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v44    # "_result":Z
    :cond_f1
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_f2

    .line 2941
    .restart local v44    # "_result":Z
    :cond_f2
    const/4 v4, 0x0

    goto :goto_f3

    .line 2946
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v44    # "_result":Z
    :sswitch_b6
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2948
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f3

    .line 2949
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2955
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_f4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f4

    const/4 v6, 0x1

    .line 2957
    .restart local v6    # "_arg1":Z
    :goto_f5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2958
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setScreenshotDisabled(Landroid/content/ComponentName;ZI)V

    .line 2959
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2960
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2952
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":I
    :cond_f3
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_f4

    .line 2955
    :cond_f4
    const/4 v6, 0x0

    goto :goto_f5

    .line 2964
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_b7
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2966
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f5

    .line 2967
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2973
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_f6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2974
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isScreenshotDisabled(Landroid/content/ComponentName;I)Z

    move-result v44

    .line 2975
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2976
    if-eqz v44, :cond_f6

    const/4 v4, 0x1

    :goto_f7
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2977
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2970
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":Z
    :cond_f5
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_f6

    .line 2976
    .restart local v6    # "_arg1":I
    .restart local v44    # "_result":Z
    :cond_f6
    const/4 v4, 0x0

    goto :goto_f7

    .line 2981
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":Z
    :sswitch_b8
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2983
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f7

    .line 2984
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2990
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_f8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f8

    const/4 v6, 0x1

    .line 2991
    .local v6, "_arg1":Z
    :goto_f9
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDataRoamingDisabled(Landroid/content/ComponentName;Z)V

    .line 2992
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2993
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2987
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    :cond_f7
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_f8

    .line 2990
    :cond_f8
    const/4 v6, 0x0

    goto :goto_f9

    .line 2997
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_b9
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2999
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f9

    .line 3000
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3005
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_fa
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->isDataRoamingDisabled(Landroid/content/ComponentName;)Z

    move-result v44

    .line 3006
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3007
    if-eqz v44, :cond_fa

    const/4 v4, 0x1

    :goto_fb
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3008
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3003
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v44    # "_result":Z
    :cond_f9
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_fa

    .line 3007
    .restart local v44    # "_result":Z
    :cond_fa
    const/4 v4, 0x0

    goto :goto_fb

    .line 3012
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v44    # "_result":Z
    :sswitch_ba
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3014
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_fb

    .line 3015
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3021
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_fc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_fc

    const/4 v6, 0x1

    .line 3022
    .restart local v6    # "_arg1":Z
    :goto_fd
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAutoSyncWhenRoamingDisabled(Landroid/content/ComponentName;Z)V

    .line 3023
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3024
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3018
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    :cond_fb
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_fc

    .line 3021
    :cond_fc
    const/4 v6, 0x0

    goto :goto_fd

    .line 3028
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_bb
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3030
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_fd

    .line 3031
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3036
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_fe
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAutoSyncWhenRoamingDisabled(Landroid/content/ComponentName;)Z

    move-result v44

    .line 3037
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3038
    if-eqz v44, :cond_fe

    const/4 v4, 0x1

    :goto_ff
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3039
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3034
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v44    # "_result":Z
    :cond_fd
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_fe

    .line 3038
    .restart local v44    # "_result":Z
    :cond_fe
    const/4 v4, 0x0

    goto :goto_ff

    .line 3043
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v44    # "_result":Z
    :sswitch_bc
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3045
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 3047
    .restart local v16    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 3049
    .restart local v18    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg2":I
    move-object/from16 v15, p0

    move/from16 v20, v7

    .line 3050
    invoke-virtual/range {v15 .. v20}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMobileDataUsage(JJI)J

    move-result-wide v44

    .line 3051
    .local v44, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3052
    move-object/from16 v0, p3

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3053
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3057
    .end local v7    # "_arg2":I
    .end local v16    # "_arg0":J
    .end local v18    # "_arg1":J
    .end local v44    # "_result":J
    :sswitch_bd
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3059
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_ff

    .line 3060
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3066
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_100

    const/4 v6, 0x1

    .line 3067
    .restart local v6    # "_arg1":Z
    :goto_101
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setNonMarketAppsDisabled(Landroid/content/ComponentName;Z)V

    .line 3068
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3069
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3063
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    :cond_ff
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_100

    .line 3066
    :cond_100
    const/4 v6, 0x0

    goto :goto_101

    .line 3073
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_be
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3075
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_101

    .line 3076
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3082
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 3083
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isNonMarketAppsDisabled(Landroid/content/ComponentName;I)Z

    move-result v44

    .line 3084
    .local v44, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3085
    if-eqz v44, :cond_102

    const/4 v4, 0x1

    :goto_103
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3086
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3079
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":Z
    :cond_101
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_102

    .line 3085
    .restart local v6    # "_arg1":I
    .restart local v44    # "_result":Z
    :cond_102
    const/4 v4, 0x0

    goto :goto_103

    .line 3090
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":Z
    :sswitch_bf
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3092
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_103

    .line 3093
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3099
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_104

    const/4 v6, 0x1

    .line 3100
    .local v6, "_arg1":Z
    :goto_105
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUsbMassStorageDisabled(Landroid/content/ComponentName;Z)V

    .line 3101
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3102
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3096
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    :cond_103
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_104

    .line 3099
    :cond_104
    const/4 v6, 0x0

    goto :goto_105

    .line 3106
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_c0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3108
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_105

    .line 3109
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3115
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 3116
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isUsbMassStorageDisabled(Landroid/content/ComponentName;I)Z

    move-result v44

    .line 3117
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3118
    if-eqz v44, :cond_106

    const/4 v4, 0x1

    :goto_107
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3119
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3112
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":Z
    :cond_105
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_106

    .line 3118
    .restart local v6    # "_arg1":I
    .restart local v44    # "_result":Z
    :cond_106
    const/4 v4, 0x0

    goto :goto_107

    .line 3123
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":Z
    :sswitch_c1
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3125
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_107

    .line 3126
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3132
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_108
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_108

    const/4 v6, 0x1

    .line 3134
    .local v6, "_arg1":Z
    :goto_109
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 3135
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setLocationDisabled(Landroid/content/ComponentName;ZI)V

    .line 3136
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3137
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3129
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":I
    :cond_107
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_108

    .line 3132
    :cond_108
    const/4 v6, 0x0

    goto :goto_109

    .line 3141
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_c2
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_109

    .line 3144
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3150
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_10a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 3151
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isLocationDisabled(Landroid/content/ComponentName;I)Z

    move-result v44

    .line 3152
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3153
    if-eqz v44, :cond_10a

    const/4 v4, 0x1

    :goto_10b
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3154
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3147
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":Z
    :cond_109
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_10a

    .line 3153
    .restart local v6    # "_arg1":I
    .restart local v44    # "_result":Z
    :cond_10a
    const/4 v4, 0x0

    goto :goto_10b

    .line 3158
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":Z
    :sswitch_c3
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3159
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isLocationDisabledForCurrentUser()Z

    move-result v44

    .line 3160
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3161
    if-eqz v44, :cond_10b

    const/4 v4, 0x1

    :goto_10c
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3162
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3161
    :cond_10b
    const/4 v4, 0x0

    goto :goto_10c

    .line 3166
    .end local v44    # "_result":Z
    :sswitch_c4
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3168
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_10c

    .line 3169
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3175
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_10d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_10d

    const/4 v6, 0x1

    .line 3176
    .local v6, "_arg1":Z
    :goto_10e
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setTextMessagingDisabled(Landroid/content/ComponentName;Z)V

    .line 3177
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3178
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3172
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    :cond_10c
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_10d

    .line 3175
    :cond_10d
    const/4 v6, 0x0

    goto :goto_10e

    .line 3182
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_c5
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3184
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_10e

    .line 3185
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3190
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_10f
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->isTextMessagingDisabled(Landroid/content/ComponentName;)Z

    move-result v44

    .line 3191
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3192
    if-eqz v44, :cond_10f

    const/4 v4, 0x1

    :goto_110
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3193
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3188
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v44    # "_result":Z
    :cond_10e
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_10f

    .line 3192
    .restart local v44    # "_result":Z
    :cond_10f
    const/4 v4, 0x0

    goto :goto_110

    .line 3197
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v44    # "_result":Z
    :sswitch_c6
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3199
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_110

    .line 3200
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3206
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 3207
    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRoamingLimitSimIccId(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 3208
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3209
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3203
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    :cond_110
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_111

    .line 3213
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_c7
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3215
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_111

    .line 3216
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3221
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_112
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRoamingLimitSimIccId(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v44

    .line 3222
    .local v44, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3223
    move-object/from16 v0, p3

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3224
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3219
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v44    # "_result":Ljava/lang/String;
    :cond_111
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_112

    .line 3228
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_c8
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3230
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_112

    .line 3231
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3237
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 3239
    .restart local v18    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v24

    .local v24, "_arg2":J
    move-object/from16 v20, p0

    move-object/from16 v21, v5

    move-wide/from16 v22, v18

    .line 3240
    invoke-virtual/range {v20 .. v25}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRoamingDataLimit(Landroid/content/ComponentName;JJ)I

    move-result v44

    .line 3241
    .local v44, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3242
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3243
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3234
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v18    # "_arg1":J
    .end local v24    # "_arg2":J
    .end local v44    # "_result":I
    :cond_112
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_113

    .line 3247
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_c9
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3249
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_113

    .line 3250
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3255
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_114
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->unsetRoamingDataLimit(Landroid/content/ComponentName;)V

    .line 3256
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3257
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3253
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :cond_113
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_114

    .line 3261
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_ca
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3263
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_114

    .line 3264
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3269
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_115
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->isRoamingDataLimitSet(Landroid/content/ComponentName;)Z

    move-result v44

    .line 3270
    .local v44, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3271
    if-eqz v44, :cond_115

    const/4 v4, 0x1

    :goto_116
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3272
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3267
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v44    # "_result":Z
    :cond_114
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_115

    .line 3271
    .restart local v44    # "_result":Z
    :cond_115
    const/4 v4, 0x0

    goto :goto_116

    .line 3276
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v44    # "_result":Z
    :sswitch_cb
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3278
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_116

    .line 3279
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3284
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_117
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRoamingDataLimit(Landroid/content/ComponentName;)J

    move-result-wide v44

    .line 3285
    .local v44, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3286
    move-object/from16 v0, p3

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3287
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3282
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v44    # "_result":J
    :cond_116
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_117

    .line 3291
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_cc
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3293
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_117

    .line 3294
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3299
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_118
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRoamingDataLimitCycleStart(Landroid/content/ComponentName;)J

    move-result-wide v44

    .line 3300
    .restart local v44    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3301
    move-object/from16 v0, p3

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3302
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3297
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v44    # "_result":J
    :cond_117
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_118

    .line 3306
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_cd
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3308
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_118

    .line 3309
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3314
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_119
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRoamingDataLimitCycleDuration(Landroid/content/ComponentName;)J

    move-result-wide v44

    .line 3315
    .restart local v44    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3316
    move-object/from16 v0, p3

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3317
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3312
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v44    # "_result":J
    :cond_118
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_119

    .line 3321
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_ce
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3323
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_119

    .line 3324
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3329
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_11a
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRoamingDataUsageFromCycleStart(Landroid/content/ComponentName;)J

    move-result-wide v44

    .line 3330
    .restart local v44    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3331
    move-object/from16 v0, p3

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3332
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3327
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v44    # "_result":J
    :cond_119
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_11a

    .line 3336
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_cf
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3337
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getSecureTimeMillis()J

    move-result-wide v44

    .line 3338
    .restart local v44    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3339
    move-object/from16 v0, p3

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3340
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3344
    .end local v44    # "_result":J
    :sswitch_d0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3346
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_11a

    .line 3347
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3353
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_11b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_11b

    const/4 v6, 0x1

    .line 3355
    .local v6, "_arg1":Z
    :goto_11c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 3356
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPopImapEmailDisabled(Landroid/content/ComponentName;ZI)V

    .line 3357
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3358
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3350
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":I
    :cond_11a
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_11b

    .line 3353
    :cond_11b
    const/4 v6, 0x0

    goto :goto_11c

    .line 3362
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_d1
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3364
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_11c

    .line 3365
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3371
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_11d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 3372
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isPopImapEmailDisabled(Landroid/content/ComponentName;I)Z

    move-result v44

    .line 3373
    .local v44, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3374
    if-eqz v44, :cond_11d

    const/4 v4, 0x1

    :goto_11e
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3375
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3368
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":Z
    :cond_11c
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_11d

    .line 3374
    .restart local v6    # "_arg1":I
    .restart local v44    # "_result":Z
    :cond_11d
    const/4 v4, 0x0

    goto :goto_11e

    .line 3379
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":Z
    :sswitch_d2
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3381
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_11e

    .line 3382
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3388
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_11f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_11f

    const/4 v6, 0x1

    .line 3390
    .local v6, "_arg1":Z
    :goto_120
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 3391
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setConsumerEmailDisabled(Landroid/content/ComponentName;ZI)V

    .line 3392
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3393
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3385
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":I
    :cond_11e
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_11f

    .line 3388
    :cond_11f
    const/4 v6, 0x0

    goto :goto_120

    .line 3397
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_d3
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3399
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_120

    .line 3400
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3406
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 3407
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isConsumerEmailDisabled(Landroid/content/ComponentName;I)Z

    move-result v44

    .line 3408
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3409
    if-eqz v44, :cond_121

    const/4 v4, 0x1

    :goto_122
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3410
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3403
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":Z
    :cond_120
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_121

    .line 3409
    .restart local v6    # "_arg1":I
    .restart local v44    # "_result":Z
    :cond_121
    const/4 v4, 0x0

    goto :goto_122

    .line 3414
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":Z
    :sswitch_d4
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3416
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_122

    .line 3417
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3423
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_123
    sget-object v4, Lcom/sonymobile/packetfilter/PacketFilterRuleBase;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/sonymobile/packetfilter/PacketFilterRuleBase;

    .line 3425
    .local v6, "_arg1":[Lcom/sonymobile/packetfilter/PacketFilterRuleBase;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 3427
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 3428
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->addPacketFilterRulesToList(Landroid/content/ComponentName;[Lcom/sonymobile/packetfilter/PacketFilterRuleBase;II)J

    move-result-wide v44

    .line 3429
    .local v44, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3430
    move-object/from16 v0, p3

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3431
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3420
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":[Lcom/sonymobile/packetfilter/PacketFilterRuleBase;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v44    # "_result":J
    :cond_122
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_123

    .line 3435
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_d5
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3437
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_123

    .line 3438
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3444
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 3445
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeAllPacketFilterRulesFromList(Landroid/content/ComponentName;I)J

    move-result-wide v44

    .line 3446
    .restart local v44    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3447
    move-object/from16 v0, p3

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3448
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3441
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":J
    :cond_123
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_124

    .line 3452
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_d6
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3454
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_124

    .line 3455
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3461
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_125
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 3463
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 3464
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPacketFilterRules(Landroid/content/ComponentName;II)[Lcom/sonymobile/packetfilter/PacketFilterRuleBase;

    move-result-object v44

    .line 3465
    .local v44, "_result":[Lcom/sonymobile/packetfilter/PacketFilterRuleBase;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3466
    const/4 v4, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v44

    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 3467
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3458
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v44    # "_result":[Lcom/sonymobile/packetfilter/PacketFilterRuleBase;
    :cond_124
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_125

    .line 3471
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_d7
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3473
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_125

    .line 3474
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3480
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_126

    const/4 v6, 0x1

    .line 3481
    .local v6, "_arg1":Z
    :goto_127
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDeactivationDisabled(Landroid/content/ComponentName;Z)V

    .line 3482
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3483
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3477
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    :cond_125
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_126

    .line 3480
    :cond_126
    const/4 v6, 0x0

    goto :goto_127

    .line 3487
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_d8
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3489
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_127

    .line 3490
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3495
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_128
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->isDeactivationDisabled(Landroid/content/ComponentName;)Z

    move-result v44

    .line 3496
    .local v44, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3497
    if-eqz v44, :cond_128

    const/4 v4, 0x1

    :goto_129
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3498
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3493
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v44    # "_result":Z
    :cond_127
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_128

    .line 3497
    .restart local v44    # "_result":Z
    :cond_128
    const/4 v4, 0x0

    goto :goto_129

    .line 3502
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v44    # "_result":Z
    :sswitch_d9
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3504
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_129

    .line 3505
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3511
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_12a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_12a

    const/4 v6, 0x1

    .line 3513
    .restart local v6    # "_arg1":Z
    :goto_12b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 3514
    .local v7, "_arg2":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSafeModeDisabled(Landroid/content/ComponentName;Z[B)V

    .line 3515
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3516
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3508
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":[B
    :cond_129
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_12a

    .line 3511
    :cond_12a
    const/4 v6, 0x0

    goto :goto_12b

    .line 3520
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_da
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3522
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_12b

    .line 3523
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3528
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_12c
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->isSafeModeDisabled(Landroid/content/ComponentName;)Z

    move-result v44

    .line 3529
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3530
    if-eqz v44, :cond_12c

    const/4 v4, 0x1

    :goto_12d
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3531
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3526
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v44    # "_result":Z
    :cond_12b
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_12c

    .line 3530
    .restart local v44    # "_result":Z
    :cond_12c
    const/4 v4, 0x0

    goto :goto_12d

    .line 3535
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v44    # "_result":Z
    :sswitch_db
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3537
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_12d

    .line 3538
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3544
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_12e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_12e

    const/4 v6, 0x1

    .line 3545
    .restart local v6    # "_arg1":Z
    :goto_12f
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAddUserDisabled(Landroid/content/ComponentName;Z)V

    .line 3546
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3547
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3541
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    :cond_12d
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_12e

    .line 3544
    :cond_12e
    const/4 v6, 0x0

    goto :goto_12f

    .line 3551
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_dc
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3553
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_12f

    .line 3554
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3559
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_130
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAddUserDisabled(Landroid/content/ComponentName;)Z

    move-result v44

    .line 3560
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3561
    if-eqz v44, :cond_130

    const/4 v4, 0x1

    :goto_131
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3562
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3557
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v44    # "_result":Z
    :cond_12f
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_130

    .line 3561
    .restart local v44    # "_result":Z
    :cond_130
    const/4 v4, 0x0

    goto :goto_131

    .line 3566
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v44    # "_result":Z
    :sswitch_dd
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3568
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_131

    .line 3569
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3575
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_132
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 3576
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceRootingStatus(Landroid/content/ComponentName;I)I

    move-result v44

    .line 3577
    .local v44, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3578
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3579
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3572
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":I
    :cond_131
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_132

    .line 3583
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_de
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3585
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_132

    .line 3586
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3592
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_133
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 3593
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getUncontrolledRootingStatus(Landroid/content/ComponentName;I)I

    move-result v44

    .line 3594
    .restart local v44    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3595
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3596
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3589
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":I
    :cond_132
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_133

    .line 3600
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_df
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3602
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_133

    .line 3603
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3609
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_134
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 3611
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 3613
    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 3615
    .local v8, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_134

    const/4 v9, 0x1

    .line 3617
    .local v9, "_arg4":Z
    :goto_135
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 3619
    .local v10, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 3621
    .local v11, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 3623
    .local v12, "_arg7":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 3625
    .local v13, "_arg8":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 3627
    .local v14, "_arg9":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v37

    .line 3629
    .local v37, "_arg10":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v38

    .line 3631
    .local v38, "_arg11":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v39

    .line 3633
    .local v39, "_arg12":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v40

    .line 3635
    .local v40, "_arg13":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v41

    .line 3637
    .local v41, "_arg14":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v42

    .local v42, "_arg15":Ljava/lang/String;
    move-object/from16 v26, p0

    move-object/from16 v27, v5

    move/from16 v28, v6

    move-object/from16 v29, v7

    move-object/from16 v30, v8

    move/from16 v31, v9

    move-object/from16 v32, v10

    move-object/from16 v33, v11

    move-object/from16 v34, v12

    move-object/from16 v35, v13

    move-object/from16 v36, v14

    .line 3638
    invoke-virtual/range {v26 .. v42}, Landroid/app/admin/IDevicePolicyManager$Stub;->addVpnConfiguration(Landroid/content/ComponentName;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3639
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3640
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3606
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Z
    .end local v10    # "_arg5":Ljava/lang/String;
    .end local v11    # "_arg6":Ljava/lang/String;
    .end local v12    # "_arg7":Ljava/lang/String;
    .end local v13    # "_arg8":Ljava/lang/String;
    .end local v14    # "_arg9":Ljava/lang/String;
    .end local v37    # "_arg10":Ljava/lang/String;
    .end local v38    # "_arg11":Ljava/lang/String;
    .end local v39    # "_arg12":Ljava/lang/String;
    .end local v40    # "_arg13":Ljava/lang/String;
    .end local v41    # "_arg14":Ljava/lang/String;
    .end local v42    # "_arg15":Ljava/lang/String;
    :cond_133
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_134

    .line 3615
    .restart local v6    # "_arg1":I
    .restart local v7    # "_arg2":Ljava/lang/String;
    .restart local v8    # "_arg3":Ljava/lang/String;
    :cond_134
    const/4 v9, 0x0

    goto :goto_135

    .line 3644
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    :sswitch_e0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3646
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_135

    .line 3647
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3653
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_136
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 3654
    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeVpnConfiguration(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v44

    .line 3655
    .local v44, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3656
    if-eqz v44, :cond_136

    const/4 v4, 0x1

    :goto_137
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3657
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3650
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v44    # "_result":Z
    :cond_135
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_136

    .line 3656
    .restart local v6    # "_arg1":Ljava/lang/String;
    .restart local v44    # "_result":Z
    :cond_136
    const/4 v4, 0x0

    goto :goto_137

    .line 3661
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v44    # "_result":Z
    :sswitch_e1
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3662
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getVpnConfigurationNames()Ljava/util/List;

    move-result-object v49

    .line 3663
    .restart local v49    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3664
    move-object/from16 v0, p3

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 3665
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3669
    .end local v49    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_e2
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3671
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_137

    .line 3672
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3678
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_138
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 3680
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 3682
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 3684
    .restart local v8    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 3686
    .local v9, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 3688
    .restart local v10    # "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 3690
    .restart local v11    # "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 3692
    .local v12, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 3694
    .restart local v13    # "_arg8":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_138

    const/4 v14, 0x1

    .line 3696
    .local v14, "_arg9":Z
    :goto_139
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v37

    .line 3698
    .restart local v37    # "_arg10":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v38

    .line 3700
    .restart local v38    # "_arg11":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_139

    const/16 v39, 0x1

    .line 3702
    .local v39, "_arg12":Z
    :goto_13a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_13a

    const/16 v40, 0x1

    .line 3704
    .local v40, "_arg13":Z
    :goto_13b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_13b

    const/16 v41, 0x1

    .line 3706
    .local v41, "_arg14":Z
    :goto_13c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    .local v42, "_arg15":I
    move-object/from16 v26, p0

    move-object/from16 v27, v5

    move-object/from16 v28, v6

    move-object/from16 v29, v7

    move-object/from16 v30, v8

    move-object/from16 v31, v9

    move-object/from16 v32, v10

    move-object/from16 v33, v11

    move/from16 v34, v12

    move-object/from16 v35, v13

    move/from16 v36, v14

    .line 3707
    invoke-virtual/range {v26 .. v42}, Landroid/app/admin/IDevicePolicyManager$Stub;->addEasAccount(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZI)V

    .line 3708
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3709
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3675
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v10    # "_arg5":Ljava/lang/String;
    .end local v11    # "_arg6":Ljava/lang/String;
    .end local v12    # "_arg7":I
    .end local v13    # "_arg8":Ljava/lang/String;
    .end local v14    # "_arg9":Z
    .end local v37    # "_arg10":Ljava/lang/String;
    .end local v38    # "_arg11":Ljava/lang/String;
    .end local v39    # "_arg12":Z
    .end local v40    # "_arg13":Z
    .end local v41    # "_arg14":Z
    .end local v42    # "_arg15":I
    :cond_137
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_138

    .line 3694
    .restart local v6    # "_arg1":Ljava/lang/String;
    .restart local v7    # "_arg2":Ljava/lang/String;
    .restart local v8    # "_arg3":Ljava/lang/String;
    .restart local v9    # "_arg4":Ljava/lang/String;
    .restart local v10    # "_arg5":Ljava/lang/String;
    .restart local v11    # "_arg6":Ljava/lang/String;
    .restart local v12    # "_arg7":I
    .restart local v13    # "_arg8":Ljava/lang/String;
    :cond_138
    const/4 v14, 0x0

    goto :goto_139

    .line 3700
    .restart local v14    # "_arg9":Z
    .restart local v37    # "_arg10":Ljava/lang/String;
    .restart local v38    # "_arg11":Ljava/lang/String;
    :cond_139
    const/16 v39, 0x0

    goto :goto_13a

    .line 3702
    .restart local v39    # "_arg12":Z
    :cond_13a
    const/16 v40, 0x0

    goto :goto_13b

    .line 3704
    .restart local v40    # "_arg13":Z
    :cond_13b
    const/16 v41, 0x0

    goto :goto_13c

    .line 3713
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v10    # "_arg5":Ljava/lang/String;
    .end local v11    # "_arg6":Ljava/lang/String;
    .end local v12    # "_arg7":I
    .end local v13    # "_arg8":Ljava/lang/String;
    .end local v14    # "_arg9":Z
    .end local v37    # "_arg10":Ljava/lang/String;
    .end local v38    # "_arg11":Ljava/lang/String;
    .end local v39    # "_arg12":Z
    .end local v40    # "_arg13":Z
    :sswitch_e3
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3715
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_13c

    .line 3716
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3722
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_13d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 3724
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 3726
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 3728
    .restart local v8    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 3730
    .restart local v9    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 3732
    .restart local v10    # "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 3734
    .restart local v11    # "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 3736
    .restart local v12    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 3738
    .restart local v13    # "_arg8":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 3740
    .local v14, "_arg9":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v37

    .line 3742
    .restart local v37    # "_arg10":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v38

    .line 3744
    .local v38, "_arg11":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v39

    .line 3746
    .local v39, "_arg12":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_13d

    const/16 v40, 0x1

    .line 3748
    .restart local v40    # "_arg13":Z
    :goto_13e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v41

    .line 3750
    .local v41, "_arg14":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    .restart local v42    # "_arg15":I
    move-object/from16 v26, p0

    move-object/from16 v27, v5

    move-object/from16 v28, v6

    move-object/from16 v29, v7

    move-object/from16 v30, v8

    move-object/from16 v31, v9

    move-object/from16 v32, v10

    move-object/from16 v33, v11

    move/from16 v34, v12

    move-object/from16 v35, v13

    move-object/from16 v36, v14

    .line 3751
    invoke-virtual/range {v26 .. v42}, Landroid/app/admin/IDevicePolicyManager$Stub;->addEmailAccount(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;I)V

    .line 3752
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3753
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3719
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v10    # "_arg5":Ljava/lang/String;
    .end local v11    # "_arg6":Ljava/lang/String;
    .end local v12    # "_arg7":I
    .end local v13    # "_arg8":Ljava/lang/String;
    .end local v14    # "_arg9":Ljava/lang/String;
    .end local v37    # "_arg10":Ljava/lang/String;
    .end local v38    # "_arg11":I
    .end local v39    # "_arg12":Ljava/lang/String;
    .end local v40    # "_arg13":Z
    .end local v41    # "_arg14":Ljava/lang/String;
    .end local v42    # "_arg15":I
    :cond_13c
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_13d

    .line 3746
    .restart local v6    # "_arg1":Ljava/lang/String;
    .restart local v7    # "_arg2":Ljava/lang/String;
    .restart local v8    # "_arg3":Ljava/lang/String;
    .restart local v9    # "_arg4":Ljava/lang/String;
    .restart local v10    # "_arg5":Ljava/lang/String;
    .restart local v11    # "_arg6":Ljava/lang/String;
    .restart local v12    # "_arg7":I
    .restart local v13    # "_arg8":Ljava/lang/String;
    .restart local v14    # "_arg9":Ljava/lang/String;
    .restart local v37    # "_arg10":Ljava/lang/String;
    .restart local v38    # "_arg11":I
    .restart local v39    # "_arg12":Ljava/lang/String;
    :cond_13d
    const/16 v40, 0x0

    goto :goto_13e

    .line 3757
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v10    # "_arg5":Ljava/lang/String;
    .end local v11    # "_arg6":Ljava/lang/String;
    .end local v12    # "_arg7":I
    .end local v13    # "_arg8":Ljava/lang/String;
    .end local v14    # "_arg9":Ljava/lang/String;
    .end local v37    # "_arg10":Ljava/lang/String;
    .end local v38    # "_arg11":I
    .end local v39    # "_arg12":Ljava/lang/String;
    :sswitch_e4
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3759
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_13e

    .line 3760
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3766
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_13f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 3768
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 3769
    .local v7, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeEmailAccount(Landroid/content/ComponentName;Ljava/lang/String;I)V

    .line 3770
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3771
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3763
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    :cond_13e
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_13f

    .line 3775
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_e5
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3777
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_13f

    .line 3778
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3784
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 3786
    .local v6, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 3788
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_140

    const/4 v8, 0x1

    .line 3790
    .local v8, "_arg3":Z
    :goto_141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, "_arg4":I
    move-object/from16 v4, p0

    .line 3791
    invoke-virtual/range {v4 .. v9}, Landroid/app/admin/IDevicePolicyManager$Stub;->installCertFromDer(Landroid/content/ComponentName;[BIZI)I

    move-result v44

    .line 3792
    .local v44, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3793
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3794
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3781
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":[B
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":Z
    .end local v9    # "_arg4":I
    .end local v44    # "_result":I
    :cond_13f
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_140

    .line 3788
    .restart local v6    # "_arg1":[B
    .restart local v7    # "_arg2":I
    :cond_140
    const/4 v8, 0x0

    goto :goto_141

    .line 3798
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":[B
    .end local v7    # "_arg2":I
    :sswitch_e6
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3800
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_141

    .line 3801
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3807
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 3809
    .restart local v6    # "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 3811
    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 3813
    .local v8, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 3815
    .restart local v9    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_142

    const/4 v10, 0x1

    .line 3817
    .local v10, "_arg5":Z
    :goto_143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .local v11, "_arg6":I
    move-object/from16 v4, p0

    .line 3818
    invoke-virtual/range {v4 .. v11}, Landroid/app/admin/IDevicePolicyManager$Stub;->installCertFromPkcs12(Landroid/content/ComponentName;[BLjava/lang/String;Ljava/lang/String;IZI)I

    move-result v44

    .line 3819
    .restart local v44    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3820
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3821
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3804
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":[B
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":I
    .end local v10    # "_arg5":Z
    .end local v11    # "_arg6":I
    .end local v44    # "_result":I
    :cond_141
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_142

    .line 3815
    .restart local v6    # "_arg1":[B
    .restart local v7    # "_arg2":Ljava/lang/String;
    .restart local v8    # "_arg3":Ljava/lang/String;
    .restart local v9    # "_arg4":I
    :cond_142
    const/4 v10, 0x0

    goto :goto_143

    .line 3825
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":[B
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":I
    :sswitch_e7
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3827
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_143

    .line 3828
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3834
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_144
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_144

    const/4 v6, 0x1

    .line 3836
    .local v6, "_arg1":Z
    :goto_145
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_145

    .line 3837
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 3843
    .local v7, "_arg2":Landroid/net/Uri;
    :goto_146
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/enterprise/installation/IInstallObserverBase$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/enterprise/installation/IInstallObserverBase;

    move-result-object v8

    .line 3845
    .local v8, "_arg3":Lcom/sonymobile/enterprise/installation/IInstallObserverBase;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    .local v9, "_arg4":[B
    move-object/from16 v4, p0

    .line 3846
    invoke-virtual/range {v4 .. v9}, Landroid/app/admin/IDevicePolicyManager$Stub;->installPackage(Landroid/content/ComponentName;ZLandroid/net/Uri;Lcom/sonymobile/enterprise/installation/IInstallObserverBase;[B)I

    move-result v44

    .line 3847
    .restart local v44    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3848
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3849
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3831
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":Landroid/net/Uri;
    .end local v8    # "_arg3":Lcom/sonymobile/enterprise/installation/IInstallObserverBase;
    .end local v9    # "_arg4":[B
    .end local v44    # "_result":I
    :cond_143
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_144

    .line 3834
    :cond_144
    const/4 v6, 0x0

    goto :goto_145

    .line 3840
    .restart local v6    # "_arg1":Z
    :cond_145
    const/4 v7, 0x0

    .restart local v7    # "_arg2":Landroid/net/Uri;
    goto :goto_146

    .line 3853
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":Landroid/net/Uri;
    :sswitch_e8
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3855
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_146

    .line 3856
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3862
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_147
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_147

    const/4 v6, 0x1

    .line 3864
    .restart local v6    # "_arg1":Z
    :goto_148
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 3866
    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_148

    const/4 v8, 0x1

    .line 3868
    .local v8, "_arg3":Z
    :goto_149
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/enterprise/installation/IUninstallObserverBase$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/enterprise/installation/IUninstallObserverBase;

    move-result-object v9

    .line 3870
    .local v9, "_arg4":Lcom/sonymobile/enterprise/installation/IUninstallObserverBase;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    .local v10, "_arg5":[B
    move-object/from16 v4, p0

    .line 3871
    invoke-virtual/range {v4 .. v10}, Landroid/app/admin/IDevicePolicyManager$Stub;->uninstallPackage(Landroid/content/ComponentName;ZLjava/lang/String;ZLcom/sonymobile/enterprise/installation/IUninstallObserverBase;[B)I

    move-result v44

    .line 3872
    .restart local v44    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3873
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3874
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3859
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Z
    .end local v9    # "_arg4":Lcom/sonymobile/enterprise/installation/IUninstallObserverBase;
    .end local v10    # "_arg5":[B
    .end local v44    # "_result":I
    :cond_146
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_147

    .line 3862
    :cond_147
    const/4 v6, 0x0

    goto :goto_148

    .line 3866
    .restart local v6    # "_arg1":Z
    .restart local v7    # "_arg2":Ljava/lang/String;
    :cond_148
    const/4 v8, 0x0

    goto :goto_149

    .line 3878
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":Ljava/lang/String;
    :sswitch_e9
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3880
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_149

    .line 3881
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3887
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_14a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_14a

    const/4 v6, 0x1

    .line 3888
    .restart local v6    # "_arg1":Z
    :goto_14b
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setLoaderModeOsvExecutionDisabled(Landroid/content/ComponentName;Z)V

    .line 3889
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3890
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3884
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    :cond_149
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_14a

    .line 3887
    :cond_14a
    const/4 v6, 0x0

    goto :goto_14b

    .line 3894
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_ea
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3896
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_14b

    .line 3897
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3902
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_14c
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->isLoaderModeOsvExecutionDisabled(Landroid/content/ComponentName;)Z

    move-result v44

    .line 3903
    .local v44, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3904
    if-eqz v44, :cond_14c

    const/4 v4, 0x1

    :goto_14d
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3905
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3900
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v44    # "_result":Z
    :cond_14b
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_14c

    .line 3904
    .restart local v44    # "_result":Z
    :cond_14c
    const/4 v4, 0x0

    goto :goto_14d

    .line 3909
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v44    # "_result":Z
    :sswitch_eb
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3911
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_14d

    .line 3912
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3917
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_14e
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->enableRemoteControl(Landroid/content/ComponentName;)J

    move-result-wide v44

    .line 3918
    .local v44, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3919
    move-object/from16 v0, p3

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3920
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3915
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v44    # "_result":J
    :cond_14d
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_14e

    .line 3924
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_ec
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3926
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 3928
    .restart local v16    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_14e

    .line 3929
    sget-object v4, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/MotionEvent;

    .line 3934
    .local v6, "_arg1":Landroid/view/MotionEvent;
    :goto_14f
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->injectMotionEvent(JLandroid/view/MotionEvent;)V

    .line 3935
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3936
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3932
    .end local v6    # "_arg1":Landroid/view/MotionEvent;
    :cond_14e
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/view/MotionEvent;
    goto :goto_14f

    .line 3940
    .end local v6    # "_arg1":Landroid/view/MotionEvent;
    .end local v16    # "_arg0":J
    :sswitch_ed
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3942
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 3944
    .restart local v16    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_14f

    .line 3945
    sget-object v4, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/KeyEvent;

    .line 3950
    .local v6, "_arg1":Landroid/view/KeyEvent;
    :goto_150
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->injectKeyEvent(JLandroid/view/KeyEvent;)V

    .line 3951
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3952
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3948
    .end local v6    # "_arg1":Landroid/view/KeyEvent;
    :cond_14f
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/view/KeyEvent;
    goto :goto_150

    .line 3956
    .end local v6    # "_arg1":Landroid/view/KeyEvent;
    .end local v16    # "_arg0":J
    :sswitch_ee
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3958
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 3959
    .restart local v16    # "_arg0":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getScreenshot(J)Landroid/graphics/Bitmap;

    move-result-object v44

    .line 3960
    .local v44, "_result":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3961
    if-eqz v44, :cond_150

    .line 3962
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3963
    const/4 v4, 0x1

    move-object/from16 v0, v44

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3968
    :goto_151
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3966
    :cond_150
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_151

    .line 3972
    .end local v16    # "_arg0":J
    .end local v44    # "_result":Landroid/graphics/Bitmap;
    :sswitch_ef
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3974
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_151

    .line 3975
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 3981
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_152
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_152

    .line 3982
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 3987
    .local v6, "_arg1":Landroid/content/Intent;
    :goto_153
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->configureSingleSignOn(Landroid/content/ComponentName;Landroid/content/Intent;)V

    .line 3988
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3989
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3978
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Landroid/content/Intent;
    :cond_151
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_152

    .line 3985
    :cond_152
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/content/Intent;
    goto :goto_153

    .line 3993
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Landroid/content/Intent;
    :sswitch_f0
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3995
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_153

    .line 3996
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 4002
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_154
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_154

    const/4 v6, 0x1

    .line 4004
    .local v6, "_arg1":Z
    :goto_155
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v43

    .line 4006
    .local v43, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 4007
    .local v8, "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v5, v6, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->setOutgoingCallRestricted(Landroid/content/ComponentName;ZLjava/util/List;I)V

    .line 4008
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4009
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 3999
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    .end local v8    # "_arg3":I
    .end local v43    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_153
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_154

    .line 4002
    :cond_154
    const/4 v6, 0x0

    goto :goto_155

    .line 4013
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_f1
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4015
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_155

    .line 4016
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 4022
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_156
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 4023
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isOutgoingCallRestricted(Landroid/content/ComponentName;I)Z

    move-result v44

    .line 4024
    .local v44, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4025
    if-eqz v44, :cond_156

    const/4 v4, 0x1

    :goto_157
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4026
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 4019
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":Z
    :cond_155
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_156

    .line 4025
    .restart local v6    # "_arg1":I
    .restart local v44    # "_result":Z
    :cond_156
    const/4 v4, 0x0

    goto :goto_157

    .line 4030
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":Z
    :sswitch_f2
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4032
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_157

    .line 4033
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 4039
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_158
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 4040
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getContactsEditingRestrictionWhitelist(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v49

    .line 4041
    .restart local v49    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4042
    move-object/from16 v0, p3

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4043
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 4036
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v49    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_157
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_158

    .line 4047
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_f3
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4049
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_158

    .line 4050
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 4056
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_159
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_159

    const/4 v6, 0x1

    .line 4058
    .local v6, "_arg1":Z
    :goto_15a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 4059
    .local v7, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setNfcDisabled(Landroid/content/ComponentName;ZI)V

    .line 4060
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4061
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 4053
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":I
    :cond_158
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_159

    .line 4056
    :cond_159
    const/4 v6, 0x0

    goto :goto_15a

    .line 4065
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_f4
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4067
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_15a

    .line 4068
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 4074
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_15b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 4075
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isNfcDisabled(Landroid/content/ComponentName;I)Z

    move-result v44

    .line 4076
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4077
    if-eqz v44, :cond_15b

    const/4 v4, 0x1

    :goto_15c
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4078
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 4071
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":Z
    :cond_15a
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_15b

    .line 4077
    .restart local v6    # "_arg1":I
    .restart local v44    # "_result":Z
    :cond_15b
    const/4 v4, 0x0

    goto :goto_15c

    .line 4082
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":Z
    :sswitch_f5
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4083
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getEASDeviceId()Ljava/lang/String;

    move-result-object v44

    .line 4084
    .local v44, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4085
    move-object/from16 v0, p3

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4086
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 4090
    .end local v44    # "_result":Ljava/lang/String;
    :sswitch_f6
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4092
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_15c

    .line 4093
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 4099
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_15d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_15d

    const/4 v6, 0x1

    .line 4101
    .local v6, "_arg1":Z
    :goto_15e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 4102
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMobileDataDisabled(Landroid/content/ComponentName;ZI)V

    .line 4103
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4104
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 4096
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":I
    :cond_15c
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_15d

    .line 4099
    :cond_15d
    const/4 v6, 0x0

    goto :goto_15e

    .line 4108
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_f7
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_15e

    .line 4111
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 4117
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_15f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 4118
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isMobileDataDisabled(Landroid/content/ComponentName;I)Z

    move-result v44

    .line 4119
    .local v44, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4120
    if-eqz v44, :cond_15f

    const/4 v4, 0x1

    :goto_160
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4121
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 4114
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":Z
    :cond_15e
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_15f

    .line 4120
    .restart local v6    # "_arg1":I
    .restart local v44    # "_result":Z
    :cond_15f
    const/4 v4, 0x0

    goto :goto_160

    .line 4125
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":Z
    :sswitch_f8
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_160

    .line 4128
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 4134
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_161

    const/4 v6, 0x1

    .line 4136
    .local v6, "_arg1":Z
    :goto_162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 4137
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAudioRecordingDisabled(Landroid/content/ComponentName;ZI)V

    .line 4138
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4139
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 4131
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":I
    :cond_160
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_161

    .line 4134
    :cond_161
    const/4 v6, 0x0

    goto :goto_162

    .line 4143
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_f9
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4145
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_162

    .line 4146
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 4152
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_163
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 4153
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAudioRecordingDisabled(Landroid/content/ComponentName;I)Z

    move-result v44

    .line 4154
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4155
    if-eqz v44, :cond_163

    const/4 v4, 0x1

    :goto_164
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4156
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 4149
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":Z
    :cond_162
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_163

    .line 4155
    .restart local v6    # "_arg1":I
    .restart local v44    # "_result":Z
    :cond_163
    const/4 v4, 0x0

    goto :goto_164

    .line 4160
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":Z
    :sswitch_fa
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_164

    .line 4163
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 4169
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_165
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_165

    const/4 v6, 0x1

    .line 4171
    .local v6, "_arg1":Z
    :goto_166
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 4172
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSettingsDisabled(Landroid/content/ComponentName;ZI)V

    .line 4173
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4174
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 4166
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":I
    :cond_164
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_165

    .line 4169
    :cond_165
    const/4 v6, 0x0

    goto :goto_166

    .line 4178
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_fb
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4180
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_166

    .line 4181
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 4187
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_167
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 4188
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isSettingsDisabled(Landroid/content/ComponentName;I)Z

    move-result v44

    .line 4189
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4190
    if-eqz v44, :cond_167

    const/4 v4, 0x1

    :goto_168
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4191
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 4184
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":Z
    :cond_166
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_167

    .line 4190
    .restart local v6    # "_arg1":I
    .restart local v44    # "_result":Z
    :cond_167
    const/4 v4, 0x0

    goto :goto_168

    .line 4195
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":Z
    :sswitch_fc
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4197
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_168

    .line 4198
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 4204
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_169
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_169

    const/4 v6, 0x1

    .line 4206
    .local v6, "_arg1":Z
    :goto_16a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 4207
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setVoiceRoamingDisabled(Landroid/content/ComponentName;ZI)V

    .line 4208
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4209
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 4201
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":I
    :cond_168
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_169

    .line 4204
    :cond_169
    const/4 v6, 0x0

    goto :goto_16a

    .line 4213
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_fd
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4215
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_16a

    .line 4216
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 4222
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_16b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 4223
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isVoiceRoamingDisabled(Landroid/content/ComponentName;I)Z

    move-result v44

    .line 4224
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4225
    if-eqz v44, :cond_16b

    const/4 v4, 0x1

    :goto_16c
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4226
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 4219
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":Z
    :cond_16a
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_16b

    .line 4225
    .restart local v6    # "_arg1":I
    .restart local v44    # "_result":Z
    :cond_16b
    const/4 v4, 0x0

    goto :goto_16c

    .line 4230
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":Z
    :sswitch_fe
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4232
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_16c

    .line 4233
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 4239
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_16d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 4241
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 4243
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 4245
    .local v8, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, "_arg4":I
    move-object/from16 v4, p0

    .line 4246
    invoke-virtual/range {v4 .. v9}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeCertificate(Landroid/content/ComponentName;IILjava/lang/String;I)Z

    move-result v44

    .line 4247
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4248
    if-eqz v44, :cond_16d

    const/4 v4, 0x1

    :goto_16e
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4249
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 4236
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":I
    .end local v44    # "_result":Z
    :cond_16c
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_16d

    .line 4248
    .restart local v6    # "_arg1":I
    .restart local v7    # "_arg2":I
    .restart local v8    # "_arg3":Ljava/lang/String;
    .restart local v9    # "_arg4":I
    .restart local v44    # "_result":Z
    :cond_16d
    const/4 v4, 0x0

    goto :goto_16e

    .line 4253
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":I
    .end local v44    # "_result":Z
    :sswitch_ff
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4255
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 4257
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 4259
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 4260
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->listCertificates(III)[Ljava/lang/String;

    move-result-object v44

    .line 4261
    .local v44, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4262
    move-object/from16 v0, p3

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 4263
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 4267
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v44    # "_result":[Ljava/lang/String;
    :sswitch_100
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4269
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_16e

    .line 4270
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 4276
    .local v5, "_arg0":Landroid/content/ComponentName;
    :goto_16f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_16f

    const/4 v6, 0x1

    .line 4277
    .local v6, "_arg1":Z
    :goto_170
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAutoSyncDataDisabled(Landroid/content/ComponentName;Z)V

    .line 4278
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4279
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 4273
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    :cond_16e
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_16f

    .line 4276
    :cond_16f
    const/4 v6, 0x0

    goto :goto_170

    .line 4283
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_101
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4285
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_170

    .line 4286
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 4291
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_171
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAutoSyncDataDisabled(Landroid/content/ComponentName;)Z

    move-result v44

    .line 4292
    .local v44, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4293
    if-eqz v44, :cond_171

    const/4 v4, 0x1

    :goto_172
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4294
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 4289
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v44    # "_result":Z
    :cond_170
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_171

    .line 4293
    .restart local v44    # "_result":Z
    :cond_171
    const/4 v4, 0x0

    goto :goto_172

    .line 4298
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v44    # "_result":Z
    :sswitch_102
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4300
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_172

    .line 4301
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 4307
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_173
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_173

    .line 4308
    sget-object v4, Lcom/sonymobile/enterprise/apninfo/ApnInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonymobile/enterprise/apninfo/ApnInfo;

    .line 4313
    .local v6, "_arg1":Lcom/sonymobile/enterprise/apninfo/ApnInfo;
    :goto_174
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->addApn(Landroid/content/ComponentName;Lcom/sonymobile/enterprise/apninfo/ApnInfo;)I

    move-result v44

    .line 4314
    .local v44, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4315
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4316
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 4304
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Lcom/sonymobile/enterprise/apninfo/ApnInfo;
    .end local v44    # "_result":I
    :cond_172
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_173

    .line 4311
    :cond_173
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Lcom/sonymobile/enterprise/apninfo/ApnInfo;
    goto :goto_174

    .line 4320
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Lcom/sonymobile/enterprise/apninfo/ApnInfo;
    :sswitch_103
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4322
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_174

    .line 4323
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 4329
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 4331
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_175

    const/4 v7, 0x1

    .line 4332
    .local v7, "_arg2":Z
    :goto_176
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->activateApn(Landroid/content/ComponentName;IZ)Z

    move-result v44

    .line 4333
    .local v44, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4334
    if-eqz v44, :cond_176

    const/4 v4, 0x1

    :goto_177
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4335
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 4326
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":Z
    .end local v44    # "_result":Z
    :cond_174
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_175

    .line 4331
    .restart local v6    # "_arg1":I
    :cond_175
    const/4 v7, 0x0

    goto :goto_176

    .line 4334
    .restart local v7    # "_arg2":Z
    .restart local v44    # "_result":Z
    :cond_176
    const/4 v4, 0x0

    goto :goto_177

    .line 4339
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":Z
    .end local v44    # "_result":Z
    :sswitch_104
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4341
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_177

    .line 4342
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 4348
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_178
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 4349
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeApn(Landroid/content/ComponentName;I)Z

    move-result v44

    .line 4350
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4351
    if-eqz v44, :cond_178

    const/4 v4, 0x1

    :goto_179
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4352
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 4345
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":Z
    :cond_177
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_178

    .line 4351
    .restart local v6    # "_arg1":I
    .restart local v44    # "_result":Z
    :cond_178
    const/4 v4, 0x0

    goto :goto_179

    .line 4356
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":Z
    :sswitch_105
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4357
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getApnList()Ljava/util/List;

    move-result-object v48

    .line 4358
    .local v48, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/enterprise/apninfo/ApnInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4359
    move-object/from16 v0, p3

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 4360
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 4364
    .end local v48    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/enterprise/apninfo/ApnInfo;>;"
    :sswitch_106
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4365
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getActiveApn()I

    move-result v44

    .line 4366
    .local v44, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4367
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4368
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 4372
    .end local v44    # "_result":I
    :sswitch_107
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4373
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isApnFixed()Z

    move-result v44

    .line 4374
    .local v44, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4375
    if-eqz v44, :cond_179

    const/4 v4, 0x1

    :goto_17a
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4376
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 4375
    :cond_179
    const/4 v4, 0x0

    goto :goto_17a

    .line 4380
    .end local v44    # "_result":Z
    :sswitch_108
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4382
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_17a

    .line 4383
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 4389
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_17b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_17b

    const/4 v6, 0x1

    .line 4390
    .local v6, "_arg1":Z
    :goto_17c
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRebootAndShutdownDisabled(Landroid/content/ComponentName;Z)V

    .line 4391
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4392
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 4386
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    :cond_17a
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_17b

    .line 4389
    :cond_17b
    const/4 v6, 0x0

    goto :goto_17c

    .line 4396
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_109
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4398
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_17c

    .line 4399
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 4404
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_17d
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->isRebootAndShutdownDisabled(Landroid/content/ComponentName;)Z

    move-result v44

    .line 4405
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4406
    if-eqz v44, :cond_17d

    const/4 v4, 0x1

    :goto_17e
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4407
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 4402
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v44    # "_result":Z
    :cond_17c
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_17d

    .line 4406
    .restart local v44    # "_result":Z
    :cond_17d
    const/4 v4, 0x0

    goto :goto_17e

    .line 4411
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v44    # "_result":Z
    :sswitch_10a
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4412
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->reboot()Z

    move-result v44

    .line 4413
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4414
    if-eqz v44, :cond_17e

    const/4 v4, 0x1

    :goto_17f
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4415
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 4414
    :cond_17e
    const/4 v4, 0x0

    goto :goto_17f

    .line 4419
    .end local v44    # "_result":Z
    :sswitch_10b
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4420
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->shutdown()Z

    move-result v44

    .line 4421
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4422
    if-eqz v44, :cond_17f

    const/4 v4, 0x1

    :goto_180
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4423
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 4422
    :cond_17f
    const/4 v4, 0x0

    goto :goto_180

    .line 4427
    .end local v44    # "_result":Z
    :sswitch_10c
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4429
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_180

    .line 4430
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 4436
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_181
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_181

    const/4 v6, 0x1

    .line 4438
    .restart local v6    # "_arg1":Z
    :goto_182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 4439
    .local v7, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->lockWallpaper(Landroid/content/ComponentName;ZI)V

    .line 4440
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4441
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 4433
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":I
    :cond_180
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_181

    .line 4436
    :cond_181
    const/4 v6, 0x0

    goto :goto_182

    .line 4445
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_10d
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4447
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_182

    .line 4448
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 4454
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_183
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 4455
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isWallpaperChangeRestricted(Landroid/content/ComponentName;I)Z

    move-result v44

    .line 4456
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4457
    if-eqz v44, :cond_183

    const/4 v4, 0x1

    :goto_184
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4458
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 4451
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":Z
    :cond_182
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_183

    .line 4457
    .restart local v6    # "_arg1":I
    .restart local v44    # "_result":Z
    :cond_183
    const/4 v4, 0x0

    goto :goto_184

    .line 4462
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":Z
    :sswitch_10e
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4464
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_184

    .line 4465
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 4471
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_185
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_185

    const/4 v6, 0x1

    .line 4473
    .local v6, "_arg1":Z
    :goto_186
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/enterprise/location/ILocationObserverBase$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/enterprise/location/ILocationObserverBase;

    move-result-object v7

    .line 4475
    .local v7, "_arg2":Lcom/sonymobile/enterprise/location/ILocationObserverBase;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 4476
    .local v8, "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->setLocationSettingFixedOn(Landroid/content/ComponentName;ZLcom/sonymobile/enterprise/location/ILocationObserverBase;I)V

    .line 4477
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4478
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 4468
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":Lcom/sonymobile/enterprise/location/ILocationObserverBase;
    .end local v8    # "_arg3":I
    :cond_184
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_185

    .line 4471
    :cond_185
    const/4 v6, 0x0

    goto :goto_186

    .line 4482
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_10f
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4484
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_186

    .line 4485
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 4491
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_187
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 4492
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isLocationSettingFixedOn(Landroid/content/ComponentName;I)Z

    move-result v44

    .line 4493
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4494
    if-eqz v44, :cond_187

    const/4 v4, 0x1

    :goto_188
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4495
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 4488
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":Z
    :cond_186
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_187

    .line 4494
    .restart local v6    # "_arg1":I
    .restart local v44    # "_result":Z
    :cond_187
    const/4 v4, 0x0

    goto :goto_188

    .line 4499
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":Z
    :sswitch_110
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4500
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isLocationSettingFixedOnForCurrentUser()Z

    move-result v44

    .line 4501
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4502
    if-eqz v44, :cond_188

    const/4 v4, 0x1

    :goto_189
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4503
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 4502
    :cond_188
    const/4 v4, 0x0

    goto :goto_189

    .line 4507
    .end local v44    # "_result":Z
    :sswitch_111
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4509
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_189

    .line 4510
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 4516
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_18a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_18a

    const/4 v6, 0x1

    .line 4517
    .local v6, "_arg1":Z
    :goto_18b
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAutoBootMode(Landroid/content/ComponentName;Z)V

    .line 4518
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4519
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 4513
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    :cond_189
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_18a

    .line 4516
    :cond_18a
    const/4 v6, 0x0

    goto :goto_18b

    .line 4523
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_112
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4525
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_18b

    .line 4526
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 4531
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_18c
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAutoBootModeEnabled(Landroid/content/ComponentName;)Z

    move-result v44

    .line 4532
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4533
    if-eqz v44, :cond_18c

    const/4 v4, 0x1

    :goto_18d
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4534
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 4529
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v44    # "_result":Z
    :cond_18b
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_18c

    .line 4533
    .restart local v44    # "_result":Z
    :cond_18c
    const/4 v4, 0x0

    goto :goto_18d

    .line 4538
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v44    # "_result":Z
    :sswitch_113
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4540
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_18d

    .line 4541
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 4547
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_18e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_18e

    const/4 v6, 0x1

    .line 4548
    .restart local v6    # "_arg1":Z
    :goto_18f
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMockLocationDisabled(Landroid/content/ComponentName;Z)V

    .line 4549
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4550
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 4544
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    :cond_18d
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_18e

    .line 4547
    :cond_18e
    const/4 v6, 0x0

    goto :goto_18f

    .line 4554
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_114
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4556
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_18f

    .line 4557
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 4562
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_190
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->isMockLocationDisabled(Landroid/content/ComponentName;)Z

    move-result v44

    .line 4563
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4564
    if-eqz v44, :cond_190

    const/4 v4, 0x1

    :goto_191
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4565
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 4560
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v44    # "_result":Z
    :cond_18f
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_190

    .line 4564
    .restart local v44    # "_result":Z
    :cond_190
    const/4 v4, 0x0

    goto :goto_191

    .line 4569
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v44    # "_result":Z
    :sswitch_115
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4571
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_191

    .line 4572
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 4578
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_192
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_192

    const/4 v6, 0x1

    .line 4580
    .restart local v6    # "_arg1":Z
    :goto_193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 4581
    .local v7, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setClipboardDisabled(Landroid/content/ComponentName;ZI)V

    .line 4582
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4583
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 4575
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":I
    :cond_191
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_192

    .line 4578
    :cond_192
    const/4 v6, 0x0

    goto :goto_193

    .line 4587
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_116
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4589
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_193

    .line 4590
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 4596
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_194
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 4597
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isClipboardDisabled(Landroid/content/ComponentName;I)Z

    move-result v44

    .line 4598
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4599
    if-eqz v44, :cond_194

    const/4 v4, 0x1

    :goto_195
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4600
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 4593
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":Z
    :cond_193
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_194

    .line 4599
    .restart local v6    # "_arg1":I
    .restart local v44    # "_result":Z
    :cond_194
    const/4 v4, 0x0

    goto :goto_195

    .line 4604
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":Z
    :sswitch_117
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4606
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_195

    .line 4607
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 4613
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_196
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_196

    const/4 v6, 0x1

    .line 4614
    .local v6, "_arg1":Z
    :goto_197
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setScreenSleepDisabled(Landroid/content/ComponentName;Z)V

    .line 4615
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4616
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 4610
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    :cond_195
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_196

    .line 4613
    :cond_196
    const/4 v6, 0x0

    goto :goto_197

    .line 4620
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_118
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4622
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_197

    .line 4623
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 4628
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_198
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->isScreenSleepDisabled(Landroid/content/ComponentName;)Z

    move-result v44

    .line 4629
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4630
    if-eqz v44, :cond_198

    const/4 v4, 0x1

    :goto_199
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4631
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 4626
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v44    # "_result":Z
    :cond_197
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_198

    .line 4630
    .restart local v44    # "_result":Z
    :cond_198
    const/4 v4, 0x0

    goto :goto_199

    .line 4635
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v44    # "_result":Z
    :sswitch_119
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4637
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_199

    .line 4638
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 4644
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_19a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 4646
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 4647
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->lockTopActivity(Landroid/content/ComponentName;Ljava/lang/String;I)V

    .line 4648
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4649
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 4641
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    :cond_199
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_19a

    .line 4653
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_11a
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4655
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_19a

    .line 4656
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 4662
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_19b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 4663
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLockTopActivityStatus(Landroid/content/ComponentName;I)Ljava/util/Map;

    move-result-object v44

    .line 4664
    .local v44, "_result":Ljava/util/Map;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4665
    move-object/from16 v0, p3

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 4666
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 4659
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":Ljava/util/Map;
    :cond_19a
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_19b

    .line 4670
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_11b
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4672
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_19b

    .line 4673
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 4679
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_19c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 4681
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 4682
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSystemUIDisabled(Landroid/content/ComponentName;II)V

    .line 4683
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4684
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 4676
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    :cond_19b
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_19c

    .line 4688
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_11c
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4690
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_19c

    .line 4691
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 4697
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_19d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 4698
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getSystemUIDisabled(Landroid/content/ComponentName;I)I

    move-result v44

    .line 4699
    .local v44, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4700
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4701
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 4694
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":I
    :cond_19c
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_19d

    .line 4705
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_11d
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4707
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_19d

    .line 4708
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 4714
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_19e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_19e

    const/4 v6, 0x1

    .line 4716
    .local v6, "_arg1":Z
    :goto_19f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 4717
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->restrictChangeHomeApp(Landroid/content/ComponentName;ZI)V

    .line 4718
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4719
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 4711
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":I
    :cond_19d
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_19e

    .line 4714
    :cond_19e
    const/4 v6, 0x0

    goto :goto_19f

    .line 4723
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_11e
    const-string v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4725
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_19f

    .line 4726
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 4732
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_1a0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 4733
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isHomeAppChangeRestricted(Landroid/content/ComponentName;I)Z

    move-result v44

    .line 4734
    .local v44, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4735
    if-eqz v44, :cond_1a0

    const/4 v4, 0x1

    :goto_1a1
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4736
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 4729
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v44    # "_result":Z
    :cond_19f
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_1a0

    .line 4735
    .restart local v6    # "_arg1":I
    .restart local v44    # "_result":Z
    :cond_1a0
    const/4 v4, 0x0

    goto :goto_1a1

    .line 42
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_5c
        0x5d -> :sswitch_5d
        0x5e -> :sswitch_5e
        0x5f -> :sswitch_5f
        0x60 -> :sswitch_60
        0x61 -> :sswitch_61
        0x62 -> :sswitch_62
        0x63 -> :sswitch_63
        0x64 -> :sswitch_64
        0x65 -> :sswitch_65
        0x66 -> :sswitch_66
        0x67 -> :sswitch_67
        0x68 -> :sswitch_68
        0x69 -> :sswitch_69
        0x6a -> :sswitch_6a
        0x6b -> :sswitch_6b
        0x6c -> :sswitch_6c
        0x6d -> :sswitch_6d
        0x6e -> :sswitch_6e
        0x6f -> :sswitch_6f
        0x70 -> :sswitch_70
        0x71 -> :sswitch_71
        0x72 -> :sswitch_72
        0x73 -> :sswitch_73
        0x74 -> :sswitch_74
        0x75 -> :sswitch_75
        0x76 -> :sswitch_76
        0x77 -> :sswitch_77
        0x78 -> :sswitch_78
        0x79 -> :sswitch_79
        0x7a -> :sswitch_7a
        0x7b -> :sswitch_7b
        0x7c -> :sswitch_7c
        0x7d -> :sswitch_7d
        0x7e -> :sswitch_7e
        0x7f -> :sswitch_7f
        0x80 -> :sswitch_80
        0x81 -> :sswitch_81
        0x82 -> :sswitch_82
        0x83 -> :sswitch_83
        0x84 -> :sswitch_84
        0x85 -> :sswitch_85
        0x86 -> :sswitch_86
        0x87 -> :sswitch_87
        0x88 -> :sswitch_88
        0x89 -> :sswitch_89
        0x8a -> :sswitch_8a
        0x8b -> :sswitch_8b
        0x8c -> :sswitch_8c
        0x8d -> :sswitch_8d
        0x8e -> :sswitch_8e
        0x8f -> :sswitch_8f
        0x90 -> :sswitch_90
        0x91 -> :sswitch_91
        0x92 -> :sswitch_92
        0x93 -> :sswitch_93
        0x94 -> :sswitch_94
        0x95 -> :sswitch_95
        0x96 -> :sswitch_96
        0x97 -> :sswitch_97
        0x98 -> :sswitch_98
        0x99 -> :sswitch_99
        0x9a -> :sswitch_9a
        0x9b -> :sswitch_9b
        0x9c -> :sswitch_9c
        0x9d -> :sswitch_9d
        0x9e -> :sswitch_9e
        0x9f -> :sswitch_9f
        0xa0 -> :sswitch_a0
        0xa1 -> :sswitch_a1
        0xa2 -> :sswitch_a2
        0xa3 -> :sswitch_a3
        0xa4 -> :sswitch_a4
        0xa5 -> :sswitch_a5
        0xa6 -> :sswitch_a6
        0xa7 -> :sswitch_a7
        0xa8 -> :sswitch_a8
        0xa9 -> :sswitch_a9
        0xaa -> :sswitch_aa
        0xab -> :sswitch_ab
        0xac -> :sswitch_ac
        0xad -> :sswitch_ad
        0xae -> :sswitch_ae
        0xaf -> :sswitch_af
        0xb0 -> :sswitch_b0
        0xb1 -> :sswitch_b1
        0xb2 -> :sswitch_b2
        0xb3 -> :sswitch_b3
        0xb4 -> :sswitch_b4
        0xb5 -> :sswitch_b5
        0xb6 -> :sswitch_b6
        0xb7 -> :sswitch_b7
        0xb8 -> :sswitch_b8
        0xb9 -> :sswitch_b9
        0xba -> :sswitch_ba
        0xbb -> :sswitch_bb
        0xbc -> :sswitch_bc
        0xbd -> :sswitch_bd
        0xbe -> :sswitch_be
        0xbf -> :sswitch_bf
        0xc0 -> :sswitch_c0
        0xc1 -> :sswitch_c1
        0xc2 -> :sswitch_c2
        0xc3 -> :sswitch_c3
        0xc4 -> :sswitch_c4
        0xc5 -> :sswitch_c5
        0xc6 -> :sswitch_c6
        0xc7 -> :sswitch_c7
        0xc8 -> :sswitch_c8
        0xc9 -> :sswitch_c9
        0xca -> :sswitch_ca
        0xcb -> :sswitch_cb
        0xcc -> :sswitch_cc
        0xcd -> :sswitch_cd
        0xce -> :sswitch_ce
        0xcf -> :sswitch_cf
        0xd0 -> :sswitch_d0
        0xd1 -> :sswitch_d1
        0xd2 -> :sswitch_d2
        0xd3 -> :sswitch_d3
        0xd4 -> :sswitch_d4
        0xd5 -> :sswitch_d5
        0xd6 -> :sswitch_d6
        0xd7 -> :sswitch_d7
        0xd8 -> :sswitch_d8
        0xd9 -> :sswitch_d9
        0xda -> :sswitch_da
        0xdb -> :sswitch_db
        0xdc -> :sswitch_dc
        0xdd -> :sswitch_dd
        0xde -> :sswitch_de
        0xdf -> :sswitch_df
        0xe0 -> :sswitch_e0
        0xe1 -> :sswitch_e1
        0xe2 -> :sswitch_e2
        0xe3 -> :sswitch_e3
        0xe4 -> :sswitch_e4
        0xe5 -> :sswitch_e5
        0xe6 -> :sswitch_e6
        0xe7 -> :sswitch_e7
        0xe8 -> :sswitch_e8
        0xe9 -> :sswitch_e9
        0xea -> :sswitch_ea
        0xeb -> :sswitch_eb
        0xec -> :sswitch_ec
        0xed -> :sswitch_ed
        0xee -> :sswitch_ee
        0xef -> :sswitch_ef
        0xf0 -> :sswitch_f0
        0xf1 -> :sswitch_f1
        0xf2 -> :sswitch_f2
        0xf3 -> :sswitch_f3
        0xf4 -> :sswitch_f4
        0xf5 -> :sswitch_f5
        0xf6 -> :sswitch_f6
        0xf7 -> :sswitch_f7
        0xf8 -> :sswitch_f8
        0xf9 -> :sswitch_f9
        0xfa -> :sswitch_fa
        0xfb -> :sswitch_fb
        0xfc -> :sswitch_fc
        0xfd -> :sswitch_fd
        0xfe -> :sswitch_fe
        0xff -> :sswitch_ff
        0x100 -> :sswitch_100
        0x101 -> :sswitch_101
        0x102 -> :sswitch_102
        0x103 -> :sswitch_103
        0x104 -> :sswitch_104
        0x105 -> :sswitch_105
        0x106 -> :sswitch_106
        0x107 -> :sswitch_107
        0x108 -> :sswitch_108
        0x109 -> :sswitch_109
        0x10a -> :sswitch_10a
        0x10b -> :sswitch_10b
        0x10c -> :sswitch_10c
        0x10d -> :sswitch_10d
        0x10e -> :sswitch_10e
        0x10f -> :sswitch_10f
        0x110 -> :sswitch_110
        0x111 -> :sswitch_111
        0x112 -> :sswitch_112
        0x113 -> :sswitch_113
        0x114 -> :sswitch_114
        0x115 -> :sswitch_115
        0x116 -> :sswitch_116
        0x117 -> :sswitch_117
        0x118 -> :sswitch_118
        0x119 -> :sswitch_119
        0x11a -> :sswitch_11a
        0x11b -> :sswitch_11b
        0x11c -> :sswitch_11c
        0x11d -> :sswitch_11d
        0x11e -> :sswitch_11e
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
