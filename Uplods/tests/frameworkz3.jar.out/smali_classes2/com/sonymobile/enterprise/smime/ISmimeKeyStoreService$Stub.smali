.class public abstract Lcom/sonymobile/enterprise/smime/ISmimeKeyStoreService$Stub;
.super Landroid/os/Binder;
.source "ISmimeKeyStoreService.java"

# interfaces
.implements Lcom/sonymobile/enterprise/smime/ISmimeKeyStoreService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/enterprise/smime/ISmimeKeyStoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/enterprise/smime/ISmimeKeyStoreService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sonymobile.enterprise.smime.ISmimeKeyStoreService"

.field static final TRANSACTION_getAliases:I = 0x4

.field static final TRANSACTION_getCertificateChainFromAlias:I = 0x1

.field static final TRANSACTION_getCertificateFromAlias:I = 0x3

.field static final TRANSACTION_getPrivateKey:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "com.sonymobile.enterprise.smime.ISmimeKeyStoreService"

    invoke-virtual {p0, p0, v0}, Lcom/sonymobile/enterprise/smime/ISmimeKeyStoreService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sonymobile/enterprise/smime/ISmimeKeyStoreService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 30
    if-nez p0, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 37
    :goto_0
    return-object v0

    .line 33
    :cond_0
    const-string v1, "com.sonymobile.enterprise.smime.ISmimeKeyStoreService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sonymobile/enterprise/smime/ISmimeKeyStoreService;

    if-eqz v1, :cond_1

    .line 35
    check-cast v0, Lcom/sonymobile/enterprise/smime/ISmimeKeyStoreService;

    goto :goto_0

    .line 37
    :cond_1
    new-instance v0, Lcom/sonymobile/enterprise/smime/ISmimeKeyStoreService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/sonymobile/enterprise/smime/ISmimeKeyStoreService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
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
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 45
    sparse-switch p1, :sswitch_data_0

    .line 103
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 49
    :sswitch_0
    const-string v5, "com.sonymobile.enterprise.smime.ISmimeKeyStoreService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :sswitch_1
    const-string v5, "com.sonymobile.enterprise.smime.ISmimeKeyStoreService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sonymobile/enterprise/smime/ISmimeKeyStoreService$Stub;->getCertificateChainFromAlias(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 58
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/enterprise/smime/X509ParcelableCertificate;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    .line 64
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/enterprise/smime/X509ParcelableCertificate;>;"
    :sswitch_2
    const-string v5, "com.sonymobile.enterprise.smime.ISmimeKeyStoreService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 67
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sonymobile/enterprise/smime/ISmimeKeyStoreService$Stub;->getPrivateKey(Ljava/lang/String;)Lcom/sonymobile/enterprise/smime/ParcelablePrivateKey;

    move-result-object v1

    .line 68
    .local v1, "_result":Lcom/sonymobile/enterprise/smime/ParcelablePrivateKey;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    invoke-virtual {v1, p3, v4}, Lcom/sonymobile/enterprise/smime/ParcelablePrivateKey;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 80
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Lcom/sonymobile/enterprise/smime/ParcelablePrivateKey;
    :sswitch_3
    const-string v5, "com.sonymobile.enterprise.smime.ISmimeKeyStoreService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 83
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sonymobile/enterprise/smime/ISmimeKeyStoreService$Stub;->getCertificateFromAlias(Ljava/lang/String;)Lcom/sonymobile/enterprise/smime/X509ParcelableCertificate;

    move-result-object v1

    .line 84
    .local v1, "_result":Lcom/sonymobile/enterprise/smime/X509ParcelableCertificate;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v1, :cond_1

    .line 86
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    invoke-virtual {v1, p3, v4}, Lcom/sonymobile/enterprise/smime/X509ParcelableCertificate;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 96
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Lcom/sonymobile/enterprise/smime/X509ParcelableCertificate;
    :sswitch_4
    const-string v5, "com.sonymobile.enterprise.smime.ISmimeKeyStoreService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/sonymobile/enterprise/smime/ISmimeKeyStoreService$Stub;->getAliases()Ljava/util/List;

    move-result-object v3

    .line 98
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_0

    .line 45
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
