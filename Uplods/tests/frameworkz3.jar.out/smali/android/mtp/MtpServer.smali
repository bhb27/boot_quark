.class public Landroid/mtp/MtpServer;
.super Ljava/lang/Object;
.source "MtpServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final LAST_COMMAND:I = 0x10001

.field public static final MTP_SERVER_DESTROYED:I = 0x10001

.field private static final SERVER_TIMEOUT:J = 0x4L

.field private static final TAG:Ljava/lang/String; = "MtpServer"

.field private static final VENDOR_HANDLER_NOT_STARTED:I = 0x0

.field private static final VENDOR_HANDLER_STARTED:I = 0x1

.field private static final VENDOR_HANDLER_STOPPED:I = 0x2

.field private static final sServerStartedLock:Ljava/util/concurrent/Semaphore;


# instance fields
.field private mMtpServiceHandler:Landroid/os/Handler;

.field private mNativeContext:J

.field private mVendorHandler:Landroid/mtp/MtpVendorHandler;

.field private mVendorHandlerStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v0, Landroid/mtp/MtpServer;->sServerStartedLock:Ljava/util/concurrent/Semaphore;

    .line 55
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/mtp/MtpDatabase;Z)V
    .locals 2
    .param p1, "database"    # Landroid/mtp/MtpDatabase;
    .param p2, "usePtp"    # Z

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Landroid/mtp/MtpServer;->mVendorHandlerStatus:I

    .line 50
    iput-object v1, p0, Landroid/mtp/MtpServer;->mMtpServiceHandler:Landroid/os/Handler;

    .line 59
    invoke-direct {p0, p1, p2, v1}, Landroid/mtp/MtpServer;->native_setup(Landroid/mtp/MtpDatabase;ZLandroid/mtp/MtpVendorHandler;)V

    .line 60
    invoke-virtual {p1, p0}, Landroid/mtp/MtpDatabase;->setServer(Landroid/mtp/MtpServer;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/mtp/MtpDatabase;ZLandroid/content/Context;)V
    .locals 1
    .param p1, "database"    # Landroid/mtp/MtpDatabase;
    .param p2, "usePtp"    # Z
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Landroid/mtp/MtpServer;->mVendorHandlerStatus:I

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/mtp/MtpServer;->mMtpServiceHandler:Landroid/os/Handler;

    .line 64
    new-instance v0, Landroid/mtp/MtpVendorHandler;

    invoke-direct {v0, p3}, Landroid/mtp/MtpVendorHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/mtp/MtpServer;->mVendorHandler:Landroid/mtp/MtpVendorHandler;

    .line 65
    iget-object v0, p0, Landroid/mtp/MtpServer;->mVendorHandler:Landroid/mtp/MtpVendorHandler;

    invoke-direct {p0, p1, p2, v0}, Landroid/mtp/MtpServer;->native_setup(Landroid/mtp/MtpDatabase;ZLandroid/mtp/MtpVendorHandler;)V

    .line 66
    invoke-virtual {p1, p0}, Landroid/mtp/MtpDatabase;->setServer(Landroid/mtp/MtpServer;)V

    .line 67
    return-void
.end method

.method private final native native_add_storage(Landroid/mtp/MtpStorage;)V
.end method

.method private final native native_cleanup()V
.end method

.method private final native native_remove_storage(I)V
.end method

.method private final native native_run()V
.end method

.method private final native native_send_device_property_changed(I)V
.end method

.method private final native native_send_object_added(I)V
.end method

.method private final native native_send_object_removed(I)V
.end method

.method private final native native_setup(Landroid/mtp/MtpDatabase;ZLandroid/mtp/MtpVendorHandler;)V
.end method

.method private notifyMtpService(I)V
    .locals 2
    .param p1, "msgId"    # I

    .prologue
    .line 158
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 159
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 160
    iget-object v1, p0, Landroid/mtp/MtpServer;->mMtpServiceHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 161
    return-void
.end method

.method public static resetServerLock()V
    .locals 1

    .prologue
    .line 123
    sget-object v0, Landroid/mtp/MtpServer;->sServerStartedLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->drainPermits()I

    .line 124
    return-void
.end method

.method private declared-synchronized stopVendorHandler()V
    .locals 2

    .prologue
    .line 151
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/mtp/MtpServer;->mVendorHandlerStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 152
    iget-object v0, p0, Landroid/mtp/MtpServer;->mVendorHandler:Landroid/mtp/MtpVendorHandler;

    invoke-virtual {v0}, Landroid/mtp/MtpVendorHandler;->stop()V

    .line 154
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Landroid/mtp/MtpServer;->mVendorHandlerStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    monitor-exit p0

    return-void

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static waitForServerStarted()V
    .locals 5

    .prologue
    .line 107
    :try_start_0
    sget-object v1, Landroid/mtp/MtpServer;->sServerStartedLock:Ljava/util/concurrent/Semaphore;

    const-wide/16 v2, 0x4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    const-string v1, "MtpServer"

    const-string v2, "MtpServer takes too much time to start."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .local v0, "exception":Ljava/lang/InterruptedException;
    :cond_0
    :goto_0
    return-void

    .line 110
    .end local v0    # "exception":Ljava/lang/InterruptedException;
    :catch_0
    move-exception v0

    .line 111
    .restart local v0    # "exception":Ljava/lang/InterruptedException;
    const-string v1, "MtpServer"

    const-string v2, "InterruptedException while tryAcquire() in waitForServerStarted"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addStorage(Landroid/mtp/MtpStorage;)V
    .locals 0
    .param p1, "storage"    # Landroid/mtp/MtpStorage;

    .prologue
    .line 143
    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_add_storage(Landroid/mtp/MtpStorage;)V

    .line 144
    return-void
.end method

.method public removeStorage(Landroid/mtp/MtpStorage;)V
    .locals 1
    .param p1, "storage"    # Landroid/mtp/MtpStorage;

    .prologue
    .line 147
    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getStorageId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/mtp/MtpServer;->native_remove_storage(I)V

    .line 148
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 76
    monitor-enter p0

    .line 77
    :try_start_0
    iget v0, p0, Landroid/mtp/MtpServer;->mVendorHandlerStatus:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/mtp/MtpServer;->mVendorHandler:Landroid/mtp/MtpVendorHandler;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Landroid/mtp/MtpServer;->mVendorHandler:Landroid/mtp/MtpVendorHandler;

    iget-wide v2, p0, Landroid/mtp/MtpServer;->mNativeContext:J

    invoke-virtual {v0, v2, v3}, Landroid/mtp/MtpVendorHandler;->start(J)V

    .line 79
    const/4 v0, 0x1

    iput v0, p0, Landroid/mtp/MtpServer;->mVendorHandlerStatus:I

    .line 81
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    sget-object v0, Landroid/mtp/MtpServer;->sServerStartedLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 83
    invoke-direct {p0}, Landroid/mtp/MtpServer;->native_run()V

    .line 84
    invoke-direct {p0}, Landroid/mtp/MtpServer;->native_cleanup()V

    .line 85
    invoke-direct {p0}, Landroid/mtp/MtpServer;->stopVendorHandler()V

    .line 87
    const v0, 0x10001

    invoke-direct {p0, v0}, Landroid/mtp/MtpServer;->notifyMtpService(I)V

    .line 88
    return-void

    .line 81
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public sendDevicePropertyChanged(I)V
    .locals 0
    .param p1, "property"    # I

    .prologue
    .line 139
    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_send_device_property_changed(I)V

    .line 140
    return-void
.end method

.method public sendObjectAdded(I)V
    .locals 0
    .param p1, "handle"    # I

    .prologue
    .line 131
    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_send_object_added(I)V

    .line 132
    return-void
.end method

.method public sendObjectRemoved(I)V
    .locals 0
    .param p1, "handle"    # I

    .prologue
    .line 135
    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_send_object_removed(I)V

    .line 136
    return-void
.end method

.method public setMtpServiceHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "aHandler"    # Landroid/os/Handler;

    .prologue
    .line 127
    iput-object p1, p0, Landroid/mtp/MtpServer;->mMtpServiceHandler:Landroid/os/Handler;

    .line 128
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 70
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "MtpServer"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 71
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 72
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Landroid/mtp/MtpServer;->stopVendorHandler()V

    .line 95
    return-void
.end method
