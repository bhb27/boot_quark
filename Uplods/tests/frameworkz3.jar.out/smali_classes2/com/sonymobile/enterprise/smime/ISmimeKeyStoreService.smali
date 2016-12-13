.class public interface abstract Lcom/sonymobile/enterprise/smime/ISmimeKeyStoreService;
.super Ljava/lang/Object;
.source "ISmimeKeyStoreService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/enterprise/smime/ISmimeKeyStoreService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getAliases()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getCertificateChainFromAlias(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/enterprise/smime/X509ParcelableCertificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getCertificateFromAlias(Ljava/lang/String;)Lcom/sonymobile/enterprise/smime/X509ParcelableCertificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getPrivateKey(Ljava/lang/String;)Lcom/sonymobile/enterprise/smime/ParcelablePrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
