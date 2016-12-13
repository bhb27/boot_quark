.class public abstract Lcom/sonymobile/enterprise/installation/IInstallService$Stub;
.super Landroid/os/Binder;
.source "IInstallService.java"

# interfaces
.implements Lcom/sonymobile/enterprise/installation/IInstallService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/enterprise/installation/IInstallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/enterprise/installation/IInstallService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sonymobile.enterprise.installation.IInstallService"

.field static final TRANSACTION_registerInstallObserver:I = 0x2

.field static final TRANSACTION_registerInstallServiceObserver:I = 0x1

.field static final TRANSACTION_registerUninstallObserver:I = 0x3

.field static final TRANSACTION_requestOperation:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.sonymobile.enterprise.installation.IInstallService"

    invoke-virtual {p0, p0, v0}, Lcom/sonymobile/enterprise/installation/IInstallService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sonymobile/enterprise/installation/IInstallService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v1, "com.sonymobile.enterprise.installation.IInstallService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sonymobile/enterprise/installation/IInstallService;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/sonymobile/enterprise/installation/IInstallService;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lcom/sonymobile/enterprise/installation/IInstallService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/sonymobile/enterprise/installation/IInstallService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
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
    const/4 v2, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 98
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 47
    :sswitch_0
    const-string v3, "com.sonymobile.enterprise.installation.IInstallService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v3, "com.sonymobile.enterprise.installation.IInstallService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/enterprise/installation/IInstallServiceObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/enterprise/installation/IInstallServiceObserver;

    move-result-object v0

    .line 56
    .local v0, "_arg0":Lcom/sonymobile/enterprise/installation/IInstallServiceObserver;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 57
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/enterprise/installation/IInstallService$Stub;->registerInstallServiceObserver(Lcom/sonymobile/enterprise/installation/IInstallServiceObserver;I)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 63
    .end local v0    # "_arg0":Lcom/sonymobile/enterprise/installation/IInstallServiceObserver;
    .end local v1    # "_arg1":I
    :sswitch_2
    const-string v3, "com.sonymobile.enterprise.installation.IInstallService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/enterprise/installation/IInstallObserverBase$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/enterprise/installation/IInstallObserverBase;

    move-result-object v1

    .line 68
    .local v1, "_arg1":Lcom/sonymobile/enterprise/installation/IInstallObserverBase;
    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/enterprise/installation/IInstallService$Stub;->registerInstallObserver(Ljava/lang/String;Lcom/sonymobile/enterprise/installation/IInstallObserverBase;)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 74
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/sonymobile/enterprise/installation/IInstallObserverBase;
    :sswitch_3
    const-string v3, "com.sonymobile.enterprise.installation.IInstallService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 78
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/enterprise/installation/IUninstallObserverBase$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/enterprise/installation/IUninstallObserverBase;

    move-result-object v1

    .line 79
    .local v1, "_arg1":Lcom/sonymobile/enterprise/installation/IUninstallObserverBase;
    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/enterprise/installation/IInstallService$Stub;->registerUninstallObserver(Ljava/lang/String;Lcom/sonymobile/enterprise/installation/IUninstallObserverBase;)V

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 85
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/sonymobile/enterprise/installation/IUninstallObserverBase;
    :sswitch_4
    const-string v3, "com.sonymobile.enterprise.installation.IInstallService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 88
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 93
    .local v0, "_arg0":Landroid/content/Intent;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/sonymobile/enterprise/installation/IInstallService$Stub;->requestOperation(Landroid/content/Intent;)V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 91
    .end local v0    # "_arg0":Landroid/content/Intent;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/Intent;
    goto :goto_1

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
