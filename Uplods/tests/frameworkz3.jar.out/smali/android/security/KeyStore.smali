.class public Landroid/security/KeyStore;
.super Ljava/lang/Object;
.source "KeyStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/KeyStore$State;
    }
.end annotation


# static fields
.field public static final FLAG_ENCRYPTED:I = 0x1

.field public static final FLAG_NONE:I = 0x0

.field public static final KEY_NOT_FOUND:I = 0x7

.field public static final LOCKED:I = 0x2

.field public static final NO_ERROR:I = 0x1

.field public static final OP_AUTH_NEEDED:I = 0xf

.field public static final PERMISSION_DENIED:I = 0x6

.field public static final PROTOCOL_ERROR:I = 0x5

.field public static final SYSTEM_ERROR:I = 0x4

.field private static final TAG:Ljava/lang/String; = "KeyStore"

.field public static final UID_SELF:I = -0x1

.field public static final UNDEFINED_ACTION:I = 0x9

.field public static final UNINITIALIZED:I = 0x3

.field public static final VALUE_CORRUPTED:I = 0x8

.field public static final WRONG_PASSWORD:I = 0xa


# instance fields
.field private final mBinder:Landroid/security/IKeystoreService;

.field private final mContext:Landroid/content/Context;

.field private mError:I

.field private mToken:Landroid/os/IBinder;


# direct methods
.method private constructor <init>(Landroid/security/IKeystoreService;)V
    .locals 1
    .param p1, "binder"    # Landroid/security/IKeystoreService;

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v0, 0x1

    iput v0, p0, Landroid/security/KeyStore;->mError:I

    .line 111
    iput-object p1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    .line 112
    invoke-static {}, Landroid/security/KeyStore;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/security/KeyStore;->mContext:Landroid/content/Context;

    .line 113
    return-void
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 3

    .prologue
    .line 116
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 117
    .local v0, "application":Landroid/app/Application;
    if-nez v0, :cond_0

    .line 118
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to obtain application Context from ActivityThread"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 121
    :cond_0
    return-object v0
.end method

.method private getFingerprintOnlySid()J
    .locals 4

    .prologue
    .line 701
    iget-object v1, p0, Landroid/security/KeyStore;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    .line 702
    .local v0, "fingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    if-nez v0, :cond_0

    .line 703
    const-wide/16 v2, 0x0

    .line 708
    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->getAuthenticatorId()J

    move-result-wide v2

    goto :goto_0
.end method

.method public static getInstance()Landroid/security/KeyStore;
    .locals 2

    .prologue
    .line 125
    const-string v1, "android.security.keystore"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/security/IKeystoreService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/IKeystoreService;

    move-result-object v0

    .line 127
    .local v0, "keystore":Landroid/security/IKeystoreService;
    new-instance v1, Landroid/security/KeyStore;

    invoke-direct {v1, v0}, Landroid/security/KeyStore;-><init>(Landroid/security/IKeystoreService;)V

    return-object v1
.end method

.method public static getKeyStoreException(I)Landroid/security/KeyStoreException;
    .locals 2
    .param p0, "errorCode"    # I

    .prologue
    .line 605
    if-lez p0, :cond_0

    .line 607
    packed-switch p0, :pswitch_data_0

    .line 625
    :pswitch_0
    new-instance v0, Landroid/security/KeyStoreException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    .line 636
    :goto_0
    return-object v0

    .line 609
    :pswitch_1
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "OK"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 611
    :pswitch_2
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "User authentication required"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 613
    :pswitch_3
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Keystore not initialized"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 615
    :pswitch_4
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "System error"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 617
    :pswitch_5
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Permission denied"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 619
    :pswitch_6
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Key not found"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 621
    :pswitch_7
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Key blob corrupted"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 623
    :pswitch_8
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Operation requires authorization"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 629
    :cond_0
    packed-switch p0, :pswitch_data_1

    .line 636
    new-instance v0, Landroid/security/KeyStoreException;

    invoke-static {p0}, Landroid/security/keymaster/KeymasterDefs;->getErrorMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 633
    :pswitch_9
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Invalid user authentication validity duration"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 607
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch

    .line 629
    :pswitch_data_1
    .packed-switch -0x10
        :pswitch_9
    .end packed-switch
.end method

.method private declared-synchronized getToken()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/security/KeyStore;->mToken:Landroid/os/IBinder;

    .line 134
    :cond_0
    iget-object v0, p0, Landroid/security/KeyStore;->mToken:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public abort(Landroid/os/IBinder;)I
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 500
    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1}, Landroid/security/IKeystoreService;->abort(Landroid/os/IBinder;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 503
    :goto_0
    return v1

    .line 501
    :catch_0
    move-exception v0

    .line 502
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 503
    const/4 v1, 0x4

    goto :goto_0
.end method

.method public addAuthToken([B)I
    .locals 3
    .param p1, "authToken"    # [B

    .prologue
    .line 531
    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1}, Landroid/security/IKeystoreService;->addAuthToken([B)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 534
    :goto_0
    return v1

    .line 532
    :catch_0
    move-exception v0

    .line 533
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 534
    const/4 v1, 0x4

    goto :goto_0
.end method

.method public addRngEntropy([B)Z
    .locals 4
    .param p1, "data"    # [B

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 407
    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1}, Landroid/security/IKeystoreService;->addRngEntropy([B)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    .line 410
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 407
    goto :goto_0

    .line 408
    :catch_0
    move-exception v0

    .line 409
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 410
    goto :goto_0
.end method

.method public begin(Ljava/lang/String;IZLandroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;
    .locals 8
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "purpose"    # I
    .param p3, "pruneable"    # Z
    .param p4, "args"    # Landroid/security/keymaster/KeymasterArguments;
    .param p5, "entropy"    # [B

    .prologue
    .line 468
    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-direct {p0}, Landroid/security/KeyStore;->getToken()Landroid/os/IBinder;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Landroid/security/IKeystoreService;->begin(Landroid/os/IBinder;Ljava/lang/String;IZLandroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 471
    :goto_0
    return-object v0

    .line 469
    :catch_0
    move-exception v7

    .line 470
    .local v7, "e":Landroid/os/RemoteException;
    const-string v0, "KeyStore"

    const-string v1, "Cannot connect to keystore"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 471
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearUid(I)Z
    .locals 6
    .param p1, "uid"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 394
    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    int-to-long v4, p1

    invoke-interface {v3, v4, v5}, Landroid/security/IKeystoreService;->clear_uid(J)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    .line 397
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 394
    goto :goto_0

    .line 395
    :catch_0
    move-exception v0

    .line 396
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 397
    goto :goto_0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 207
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public contains(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 199
    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1, p2}, Landroid/security/IKeystoreService;->exist(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    .line 202
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 199
    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 202
    goto :goto_0
.end method

.method public delete(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 194
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public delete(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 186
    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1, p2}, Landroid/security/IKeystoreService;->del(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    .line 189
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 186
    goto :goto_0

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 189
    goto :goto_0
.end method

.method public duplicate(Ljava/lang/String;ILjava/lang/String;I)Z
    .locals 4
    .param p1, "srcKey"    # Ljava/lang/String;
    .param p2, "srcUid"    # I
    .param p3, "destKey"    # Ljava/lang/String;
    .param p4, "destUid"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 371
    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/security/IKeystoreService;->duplicate(Ljava/lang/String;ILjava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    .line 374
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 371
    goto :goto_0

    .line 372
    :catch_0
    move-exception v0

    .line 373
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 374
    goto :goto_0
.end method

.method public exportKey(Ljava/lang/String;ILandroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;)Landroid/security/keymaster/ExportResult;
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "format"    # I
    .param p3, "clientId"    # Landroid/security/keymaster/KeymasterBlob;
    .param p4, "appId"    # Landroid/security/keymaster/KeymasterBlob;

    .prologue
    .line 458
    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/security/IKeystoreService;->exportKey(Ljava/lang/String;ILandroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;)Landroid/security/keymaster/ExportResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 461
    :goto_0
    return-object v1

    .line 459
    :catch_0
    move-exception v0

    .line 460
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 461
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public finish(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "arguments"    # Landroid/security/keymaster/KeymasterArguments;
    .param p3, "signature"    # [B

    .prologue
    .line 495
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/security/KeyStore;->finish(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B[B)Landroid/security/keymaster/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method public finish(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B[B)Landroid/security/keymaster/OperationResult;
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "arguments"    # Landroid/security/keymaster/KeymasterArguments;
    .param p3, "signature"    # [B
    .param p4, "entropy"    # [B

    .prologue
    .line 487
    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/security/IKeystoreService;->finish(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B[B)Landroid/security/keymaster/OperationResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 490
    :goto_0
    return-object v1

    .line 488
    :catch_0
    move-exception v0

    .line 489
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 490
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public generate(Ljava/lang/String;IIII[[B)Z
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "keyType"    # I
    .param p4, "keySize"    # I
    .param p5, "flags"    # I
    .param p6, "args"    # [[B

    .prologue
    .line 298
    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    new-instance v6, Landroid/security/KeystoreArguments;

    invoke-direct {v6, p6}, Landroid/security/KeystoreArguments;-><init>([[B)V

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v6}, Landroid/security/IKeystoreService;->generate(Ljava/lang/String;IIIILandroid/security/KeystoreArguments;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 302
    :goto_0
    return v0

    .line 298
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 300
    :catch_0
    move-exception v7

    .line 301
    .local v7, "e":Landroid/os/RemoteException;
    const-string v0, "KeyStore"

    const-string v1, "Cannot connect to keystore"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 302
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public generateKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BIILandroid/security/keymaster/KeyCharacteristics;)I
    .locals 8
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/security/keymaster/KeymasterArguments;
    .param p3, "entropy"    # [B
    .param p4, "uid"    # I
    .param p5, "flags"    # I
    .param p6, "outCharacteristics"    # Landroid/security/keymaster/KeyCharacteristics;

    .prologue
    .line 417
    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/security/IKeystoreService;->generateKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BIILandroid/security/keymaster/KeyCharacteristics;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 420
    :goto_0
    return v0

    .line 418
    :catch_0
    move-exception v7

    .line 419
    .local v7, "e":Landroid/os/RemoteException;
    const-string v0, "KeyStore"

    const-string v1, "Cannot connect to keystore"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 420
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public generateKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BILandroid/security/keymaster/KeyCharacteristics;)I
    .locals 7
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/security/keymaster/KeymasterArguments;
    .param p3, "entropy"    # [B
    .param p4, "flags"    # I
    .param p5, "outCharacteristics"    # Landroid/security/keymaster/KeyCharacteristics;

    .prologue
    .line 426
    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/security/KeyStore;->generateKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BIILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/String;)[B
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 164
    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1}, Landroid/security/IKeystoreService;->get(Ljava/lang/String;)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 167
    :goto_0
    return-object v1

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/String;I)[B
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 721
    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2}, Landroid/security/IKeystoreService;->get_ex(Ljava/lang/String;I)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 724
    :goto_0
    return-object v1

    .line 722
    :catch_0
    move-exception v0

    .line 723
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 724
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInvalidKeyException(Ljava/lang/String;I)Ljava/security/InvalidKeyException;
    .locals 1
    .param p1, "keystoreKeyAlias"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .prologue
    .line 716
    invoke-static {p2}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStore;->getInvalidKeyException(Ljava/lang/String;Landroid/security/KeyStoreException;)Ljava/security/InvalidKeyException;

    move-result-object v0

    return-object v0
.end method

.method public getInvalidKeyException(Ljava/lang/String;Landroid/security/KeyStoreException;)Ljava/security/InvalidKeyException;
    .locals 12
    .param p1, "keystoreKeyAlias"    # Ljava/lang/String;
    .param p2, "e"    # Landroid/security/KeyStoreException;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    .line 648
    invoke-virtual {p2}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 696
    new-instance v5, Ljava/security/InvalidKeyException;

    const-string v8, "Keystore operation failed"

    invoke-direct {v5, v8, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v5

    .line 650
    :sswitch_0
    new-instance v5, Landroid/security/keystore/UserNotAuthenticatedException;

    invoke-direct {v5}, Landroid/security/keystore/UserNotAuthenticatedException;-><init>()V

    goto :goto_0

    .line 652
    :sswitch_1
    new-instance v5, Landroid/security/keystore/KeyExpiredException;

    invoke-direct {v5}, Landroid/security/keystore/KeyExpiredException;-><init>()V

    goto :goto_0

    .line 654
    :sswitch_2
    new-instance v5, Landroid/security/keystore/KeyNotYetValidException;

    invoke-direct {v5}, Landroid/security/keystore/KeyNotYetValidException;-><init>()V

    goto :goto_0

    .line 663
    :sswitch_3
    new-instance v3, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v3}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    .line 664
    .local v3, "keyCharacteristics":Landroid/security/keymaster/KeyCharacteristics;
    invoke-virtual {p0, p1, v8, v8, v3}, Landroid/security/KeyStore;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeyCharacteristics;)I

    move-result v2

    .line 666
    .local v2, "getKeyCharacteristicsErrorCode":I
    const/4 v5, 0x1

    if-eq v2, v5, :cond_0

    .line 667
    new-instance v5, Ljava/security/InvalidKeyException;

    const-string v8, "Failed to obtained key characteristics"

    invoke-static {v2}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v9

    invoke-direct {v5, v8, v9}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 671
    :cond_0
    const v5, -0x5ffffe0a

    invoke-virtual {v3, v5}, Landroid/security/keymaster/KeyCharacteristics;->getUnsignedLongs(I)Ljava/util/List;

    move-result-object v4

    .line 673
    .local v4, "keySids":Ljava/util/List;, "Ljava/util/List<Ljava/math/BigInteger;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 675
    new-instance v5, Landroid/security/keystore/KeyPermanentlyInvalidatedException;

    invoke-direct {v5}, Landroid/security/keystore/KeyPermanentlyInvalidatedException;-><init>()V

    goto :goto_0

    .line 677
    :cond_1
    invoke-static {}, Landroid/security/GateKeeper;->getSecureUserId()J

    move-result-wide v6

    .line 678
    .local v6, "rootSid":J
    cmp-long v5, v6, v10

    if-eqz v5, :cond_2

    invoke-static {v6, v7}, Landroid/security/keymaster/KeymasterArguments;->toUint64(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 681
    new-instance v5, Landroid/security/keystore/UserNotAuthenticatedException;

    invoke-direct {v5}, Landroid/security/keystore/UserNotAuthenticatedException;-><init>()V

    goto :goto_0

    .line 684
    :cond_2
    invoke-direct {p0}, Landroid/security/KeyStore;->getFingerprintOnlySid()J

    move-result-wide v0

    .line 685
    .local v0, "fingerprintOnlySid":J
    cmp-long v5, v0, v10

    if-eqz v5, :cond_3

    invoke-static {v0, v1}, Landroid/security/keymaster/KeymasterArguments;->toUint64(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 689
    new-instance v5, Landroid/security/keystore/UserNotAuthenticatedException;

    invoke-direct {v5}, Landroid/security/keystore/UserNotAuthenticatedException;-><init>()V

    goto :goto_0

    .line 693
    :cond_3
    new-instance v5, Landroid/security/keystore/KeyPermanentlyInvalidatedException;

    invoke-direct {v5}, Landroid/security/keystore/KeyPermanentlyInvalidatedException;-><init>()V

    goto :goto_0

    .line 648
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1a -> :sswitch_3
        -0x19 -> :sswitch_1
        -0x18 -> :sswitch_2
        0x2 -> :sswitch_0
        0xf -> :sswitch_3
    .end sparse-switch
.end method

.method public getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeyCharacteristics;)I
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "clientId"    # Landroid/security/keymaster/KeymasterBlob;
    .param p3, "appId"    # Landroid/security/keymaster/KeymasterBlob;
    .param p4, "outCharacteristics"    # Landroid/security/keymaster/KeyCharacteristics;

    .prologue
    .line 432
    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/security/IKeystoreService;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeyCharacteristics;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 435
    :goto_0
    return v1

    .line 433
    :catch_0
    move-exception v0

    .line 434
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 435
    const/4 v1, 0x4

    goto :goto_0
.end method

.method public getLastError()I
    .locals 1

    .prologue
    .line 402
    iget v0, p0, Landroid/security/KeyStore;->mError:I

    return v0
.end method

.method public getmtime(Ljava/lang/String;)J
    .locals 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, -0x1

    .line 357
    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1}, Landroid/security/IKeystoreService;->getmtime(Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 358
    .local v2, "millis":J
    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 365
    .end local v2    # "millis":J
    :goto_0
    return-wide v4

    .line 362
    .restart local v2    # "millis":J
    :cond_0
    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v2

    goto :goto_0

    .line 363
    .end local v2    # "millis":J
    :catch_0
    move-exception v0

    .line 364
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v6, "Cannot connect to keystore"

    invoke-static {v1, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public grant(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 335
    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1, p2}, Landroid/security/IKeystoreService;->grant(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    .line 338
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 335
    goto :goto_0

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 338
    goto :goto_0
.end method

.method public importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BIILandroid/security/keymaster/KeyCharacteristics;)I
    .locals 9
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/security/keymaster/KeymasterArguments;
    .param p3, "format"    # I
    .param p4, "keyData"    # [B
    .param p5, "uid"    # I
    .param p6, "flags"    # I
    .param p7, "outCharacteristics"    # Landroid/security/keymaster/KeyCharacteristics;

    .prologue
    .line 442
    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-interface/range {v0 .. v7}, Landroid/security/IKeystoreService;->importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BIILandroid/security/keymaster/KeyCharacteristics;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 446
    :goto_0
    return v0

    .line 444
    :catch_0
    move-exception v8

    .line 445
    .local v8, "e":Landroid/os/RemoteException;
    const-string v0, "KeyStore"

    const-string v1, "Cannot connect to keystore"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 446
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BILandroid/security/keymaster/KeyCharacteristics;)I
    .locals 8
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/security/keymaster/KeymasterArguments;
    .param p3, "format"    # I
    .param p4, "keyData"    # [B
    .param p5, "flags"    # I
    .param p6, "outCharacteristics"    # Landroid/security/keymaster/KeyCharacteristics;

    .prologue
    .line 452
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BIILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v0

    return v0
.end method

.method public importKey(Ljava/lang/String;[BII)Z
    .locals 4
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "uid"    # I
    .param p4, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 308
    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/security/IKeystoreService;->import_key(Ljava/lang/String;[BII)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    .line 311
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 308
    goto :goto_0

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 311
    goto :goto_0
.end method

.method public insert(Ljava/lang/String;[BII)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B
    .param p3, "uid"    # I
    .param p4, "flags"    # I

    .prologue
    .line 177
    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/security/IKeystoreService;->insert(Ljava/lang/String;[BII)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 180
    :goto_0
    return v1

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    const/4 v1, 0x4

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 292
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/security/KeyStore;->isEmpty(I)Z

    move-result v0

    return v0
.end method

.method public isEmpty(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 284
    :try_start_0
    iget-object v2, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v2, p1}, Landroid/security/IKeystoreService;->isEmpty(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 287
    :cond_0
    :goto_0
    return v1

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isHardwareBacked()Z
    .locals 1

    .prologue
    .line 380
    const-string v0, "RSA"

    invoke-virtual {p0, v0}, Landroid/security/KeyStore;->isHardwareBacked(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isHardwareBacked(Ljava/lang/String;)Z
    .locals 5
    .param p1, "keyType"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 385
    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/security/IKeystoreService;->is_hardware_backed(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    .line 388
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 385
    goto :goto_0

    .line 386
    :catch_0
    move-exception v0

    .line 387
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 388
    goto :goto_0
.end method

.method public isOperationAuthorized(Landroid/os/IBinder;)Z
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 515
    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1}, Landroid/security/IKeystoreService;->isOperationAuthorized(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 518
    :goto_0
    return v1

    .line 516
    :catch_0
    move-exception v0

    .line 517
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 518
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isUnlocked()Z
    .locals 2

    .prologue
    .line 159
    invoke-virtual {p0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public list(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 223
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public list(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 215
    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2}, Landroid/security/IKeystoreService;->list(Ljava/lang/String;I)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 218
    :goto_0
    return-object v1

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 218
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public lock()Z
    .locals 1

    .prologue
    .line 251
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/security/KeyStore;->lock(I)Z

    move-result v0

    return v0
.end method

.method public lock(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 243
    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1}, Landroid/security/IKeystoreService;->lock(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    .line 246
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 243
    goto :goto_0

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 246
    goto :goto_0
.end method

.method public onUserAdded(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 580
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStore;->onUserAdded(II)V

    .line 581
    return-void
.end method

.method public onUserAdded(II)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "parentId"    # I

    .prologue
    .line 568
    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2}, Landroid/security/IKeystoreService;->onUserAdded(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 572
    :goto_0
    return-void

    .line 569
    :catch_0
    move-exception v0

    .line 570
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onUserPasswordChanged(ILjava/lang/String;)Z
    .locals 4
    .param p1, "userId"    # I
    .param p2, "newPassword"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 547
    if-nez p2, :cond_0

    .line 548
    const-string p2, ""

    .line 551
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1, p2}, Landroid/security/IKeystoreService;->onUserPasswordChanged(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_1

    .line 554
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 551
    goto :goto_0

    .line 552
    :catch_0
    move-exception v0

    .line 553
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 554
    goto :goto_0
.end method

.method public onUserPasswordChanged(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newPassword"    # Ljava/lang/String;

    .prologue
    .line 597
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/security/KeyStore;->onUserPasswordChanged(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onUserRemoved(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 590
    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1}, Landroid/security/IKeystoreService;->onUserRemoved(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    :goto_0
    return-void

    .line 591
    :catch_0
    move-exception v0

    .line 592
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public put(Ljava/lang/String;[BII)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B
    .param p3, "uid"    # I
    .param p4, "flags"    # I

    .prologue
    const/4 v0, 0x1

    .line 172
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/security/KeyStore;->insert(Ljava/lang/String;[BII)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 228
    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3}, Landroid/security/IKeystoreService;->reset()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    .line 231
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 228
    goto :goto_0

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 231
    goto :goto_0
.end method

.method public sign(Ljava/lang/String;[B)[B
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 317
    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2}, Landroid/security/IKeystoreService;->sign(Ljava/lang/String;[B)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 320
    :goto_0
    return-object v1

    .line 318
    :catch_0
    move-exception v0

    .line 319
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 320
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public state()Landroid/security/KeyStore$State;
    .locals 1

    .prologue
    .line 155
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/security/KeyStore;->state(I)Landroid/security/KeyStore$State;

    move-result-object v0

    return-object v0
.end method

.method public state(I)Landroid/security/KeyStore$State;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 140
    :try_start_0
    iget-object v2, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v2, p1}, Landroid/security/IKeystoreService;->getState(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 146
    .local v1, "ret":I
    packed-switch v1, :pswitch_data_0

    .line 150
    new-instance v2, Ljava/lang/AssertionError;

    iget v3, p0, Landroid/security/KeyStore;->mError:I

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(I)V

    throw v2

    .line 141
    .end local v1    # "ret":I
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 147
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "ret":I
    :pswitch_0
    sget-object v2, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    .line 149
    :goto_0
    return-object v2

    .line 148
    :pswitch_1
    sget-object v2, Landroid/security/KeyStore$State;->LOCKED:Landroid/security/KeyStore$State;

    goto :goto_0

    .line 149
    :pswitch_2
    sget-object v2, Landroid/security/KeyStore$State;->UNINITIALIZED:Landroid/security/KeyStore$State;

    goto :goto_0

    .line 146
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public ungrant(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 344
    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1, p2}, Landroid/security/IKeystoreService;->ungrant(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    .line 347
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 344
    goto :goto_0

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 347
    goto :goto_0
.end method

.method public unlock(ILjava/lang/String;)Z
    .locals 4
    .param p1, "userId"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 267
    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1, p2}, Landroid/security/IKeystoreService;->unlock(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/security/KeyStore;->mError:I

    .line 268
    iget v3, p0, Landroid/security/KeyStore;->mError:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v3, v1, :cond_0

    .line 271
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 268
    goto :goto_0

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 271
    goto :goto_0
.end method

.method public unlock(Ljava/lang/String;)Z
    .locals 1
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 276
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/security/KeyStore;->unlock(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public update(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "arguments"    # Landroid/security/keymaster/KeymasterArguments;
    .param p3, "input"    # [B

    .prologue
    .line 477
    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2, p3}, Landroid/security/IKeystoreService;->update(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 480
    :goto_0
    return-object v1

    .line 478
    :catch_0
    move-exception v0

    .line 479
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 480
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public verify(Ljava/lang/String;[B[B)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "signature"    # [B

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 326
    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1, p2, p3}, Landroid/security/IKeystoreService;->verify(Ljava/lang/String;[B[B)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    .line 329
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 326
    goto :goto_0

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 329
    goto :goto_0
.end method
