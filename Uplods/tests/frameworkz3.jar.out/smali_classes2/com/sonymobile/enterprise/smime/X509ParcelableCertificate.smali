.class public Lcom/sonymobile/enterprise/smime/X509ParcelableCertificate;
.super Ljava/lang/Object;
.source "X509ParcelableCertificate.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sonymobile/enterprise/smime/X509ParcelableCertificate;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "X509ParcelableCertifica"


# instance fields
.field mCertificate:Ljava/security/cert/X509Certificate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/sonymobile/enterprise/smime/X509ParcelableCertificate$1;

    invoke-direct {v0}, Lcom/sonymobile/enterprise/smime/X509ParcelableCertificate$1;-><init>()V

    sput-object v0, Lcom/sonymobile/enterprise/smime/X509ParcelableCertificate;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v2, 0x0

    .line 36
    .local v2, "factory":Ljava/security/cert/CertificateFactory;
    :try_start_0
    const-string v5, "X.509"

    invoke-static {v5}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 43
    .local v4, "length":I
    new-array v0, v4, [B

    .line 44
    .local v0, "bytes":[B
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 45
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 47
    .local v3, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v2, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    iput-object v5, p0, Lcom/sonymobile/enterprise/smime/X509ParcelableCertificate;->mCertificate:Ljava/security/cert/X509Certificate;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 57
    .end local v0    # "bytes":[B
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "length":I
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v1

    .line 38
    .local v1, "e":Ljava/security/cert/CertificateException;
    const-string v5, "X509ParcelableCertifica"

    const-string v6, "Could not create CertificateFactory"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 53
    .end local v1    # "e":Ljava/security/cert/CertificateException;
    .restart local v0    # "bytes":[B
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "length":I
    :catch_1
    move-exception v1

    .line 54
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "X509ParcelableCertifica"

    const-string v6, "X509ParcelableCertificate: "

    invoke-static {v5, v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 48
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 49
    .local v1, "e":Ljava/security/cert/CertificateException;
    :try_start_3
    const-string v5, "X509ParcelableCertifica"

    const-string v6, "Could not generateCertificate"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 52
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 53
    :catch_3
    move-exception v1

    .line 54
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "X509ParcelableCertifica"

    const-string v6, "X509ParcelableCertificate: "

    invoke-static {v5, v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 51
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 52
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 55
    :goto_1
    throw v5

    .line 53
    :catch_4
    move-exception v1

    .line 54
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v6, "X509ParcelableCertifica"

    const-string v7, "X509ParcelableCertificate: "

    invoke-static {v6, v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public constructor <init>(Ljava/security/cert/X509Certificate;)V
    .locals 0
    .param p1, "certificate"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/sonymobile/enterprise/smime/X509ParcelableCertificate;->mCertificate:Ljava/security/cert/X509Certificate;

    .line 31
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public getCertificate()Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sonymobile/enterprise/smime/X509ParcelableCertificate;->mCertificate:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "X509ParcelableCertificate{mCertificate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/enterprise/smime/X509ParcelableCertificate;->mCertificate:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    .line 79
    const/4 v2, 0x0

    new-array v0, v2, [B

    .line 81
    .local v0, "bytes":[B
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/enterprise/smime/X509ParcelableCertificate;->mCertificate:Ljava/security/cert/X509Certificate;

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getEncoded()[B
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 85
    :goto_0
    array-length v2, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 87
    return-void

    .line 82
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Ljava/security/cert/CertificateEncodingException;
    const-string v2, "X509ParcelableCertifica"

    const-string v3, "Could not getEncoded certificate"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
