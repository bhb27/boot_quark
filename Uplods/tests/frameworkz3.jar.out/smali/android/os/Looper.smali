.class public final Landroid/os/Looper;
.super Ljava/lang/Object;
.source "Looper.java"


# static fields
.field private static final CMDLINE:Ljava/lang/String; = "/proc/self/cmdline"

.field private static final TAG:Ljava/lang/String; = "Looper"

.field private static sLatencyCountFast:I

.field private static sLatencyCountSlow:I

.field private static sLatencyEnabled:Z

.field private static sLatencySumFast:J

.field private static sLatencySumSlow:J

.field private static sMainLooper:Landroid/os/Looper;

.field static final sThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/os/Looper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLogging:Landroid/util/Printer;

.field final mQueue:Landroid/os/MessageQueue;

.field final mThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    sput-boolean v0, Landroid/os/Looper;->sLatencyEnabled:Z

    .line 84
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/os/Looper;->sThreadLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "quitAllowed"    # Z

    .prologue
    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    new-instance v0, Landroid/os/MessageQueue;

    invoke-direct {v0, p1}, Landroid/os/MessageQueue;-><init>(Z)V

    iput-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    .line 311
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    .line 312
    return-void
.end method

.method private static getAction(Landroid/os/Message;)Ljava/lang/String;
    .locals 2
    .param p0, "msg"    # Landroid/os/Message;

    .prologue
    .line 195
    if-nez p0, :cond_0

    const-string v0, ""

    .line 197
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Looper;->getProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":Message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getCmdLineFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    const-string v0, "/proc/self/cmdline"

    return-object v0
.end method

.method public static getMainLooper()Landroid/os/Looper;
    .locals 2

    .prologue
    .line 140
    const-class v1, Landroid/os/Looper;

    monitor-enter v1

    .line 141
    :try_start_0
    sget-object v0, Landroid/os/Looper;->sMainLooper:Landroid/os/Looper;

    monitor-exit v1

    return-object v0

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getProcessName()Ljava/lang/String;
    .locals 9

    .prologue
    .line 158
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v6

    .line 159
    .local v6, "policy":Landroid/os/StrictMode$ThreadPolicy;
    sget-object v7, Landroid/os/StrictMode$ThreadPolicy;->LAX:Landroid/os/StrictMode$ThreadPolicy;

    invoke-static {v7}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 160
    const/4 v2, 0x0

    .line 162
    .local v2, "fis":Ljava/io/FileInputStream;
    const/16 v7, 0x40

    :try_start_0
    new-array v0, v7, [B

    .line 163
    .local v0, "arr":[B
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Looper;->getCmdLineFile()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    .local v1, "f":Ljava/io/File;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    .line 166
    .local v5, "n":I
    const/4 v4, 0x0

    .line 167
    .local v4, "j":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-byte v7, v0, v4

    const/16 v8, 0x20

    if-lt v7, v8, :cond_0

    .line 168
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 170
    :cond_0
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v0, v8, v4}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 179
    if-eqz v3, :cond_1

    .line 181
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 186
    :cond_1
    :goto_1
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v2, v3

    .line 188
    .end local v0    # "arr":[B
    .end local v1    # "f":Ljava/io/File;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "j":I
    .end local v5    # "n":I
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :goto_2
    return-object v7

    .line 172
    :catch_0
    move-exception v7

    .line 179
    :goto_3
    if-eqz v2, :cond_2

    .line 181
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 186
    :cond_2
    :goto_4
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 188
    :goto_5
    const-string/jumbo v7, "unreadable"

    goto :goto_2

    .line 174
    :catch_1
    move-exception v7

    .line 179
    :goto_6
    if-eqz v2, :cond_3

    .line 181
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 186
    :cond_3
    :goto_7
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_5

    .line 176
    :catch_2
    move-exception v7

    .line 179
    :goto_8
    if-eqz v2, :cond_4

    .line 181
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 186
    :cond_4
    :goto_9
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_5

    .line 179
    :catchall_0
    move-exception v7

    :goto_a
    if-eqz v2, :cond_5

    .line 181
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 186
    :cond_5
    :goto_b
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v7

    .line 183
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "arr":[B
    .restart local v1    # "f":Ljava/io/File;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "j":I
    .restart local v5    # "n":I
    :catch_3
    move-exception v8

    goto :goto_1

    .end local v0    # "arr":[B
    .end local v1    # "f":Ljava/io/File;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "j":I
    .end local v5    # "n":I
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_4
    move-exception v7

    goto :goto_4

    :catch_5
    move-exception v7

    goto :goto_7

    :catch_6
    move-exception v7

    goto :goto_9

    :catch_7
    move-exception v8

    goto :goto_b

    .line 179
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "arr":[B
    .restart local v1    # "f":Ljava/io/File;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_a

    .line 176
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_8
    move-exception v7

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_8

    .line 174
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_9
    move-exception v7

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_6

    .line 172
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_a
    move-exception v7

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method public static loop()V
    .locals 23

    .prologue
    .line 206
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v8

    .line 207
    .local v8, "me":Landroid/os/Looper;
    if-nez v8, :cond_0

    .line 208
    new-instance v18, Ljava/lang/RuntimeException;

    const-string v19, "No Looper; Looper.prepare() wasn\'t called on this thread."

    invoke-direct/range {v18 .. v19}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 210
    :cond_0
    iget-object v11, v8, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    .line 214
    .local v11, "queue":Landroid/os/MessageQueue;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 215
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 218
    .local v6, "ident":J
    :goto_0
    invoke-virtual {v11}, Landroid/os/MessageQueue;->next()Landroid/os/Message;

    move-result-object v9

    .line 219
    .local v9, "msg":Landroid/os/Message;
    if-nez v9, :cond_1

    .line 221
    return-void

    .line 225
    :cond_1
    iget-object v3, v8, Landroid/os/Looper;->mLogging:Landroid/util/Printer;

    .line 226
    .local v3, "logging":Landroid/util/Printer;
    if-eqz v3, :cond_2

    .line 227
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, ">>>>> Dispatching to "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v9, Landroid/os/Message;->target:Landroid/os/Handler;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v9, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ": "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v9, Landroid/os/Message;->what:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v3, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 233
    :cond_2
    sget-boolean v18, Landroid/os/Looper;->sLatencyEnabled:Z

    if-nez v18, :cond_6

    .line 234
    iget-object v0, v9, Landroid/os/Message;->target:Landroid/os/Handler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 273
    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    .line 274
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "<<<<< Finished to "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v9, Landroid/os/Message;->target:Landroid/os/Handler;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v9, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v3, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 279
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 280
    .local v12, "newIdent":J
    cmp-long v18, v6, v12

    if-eqz v18, :cond_5

    .line 281
    const-string v18, "Looper"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Thread identity changed from 0x"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " to 0x"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v12, v13}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " while dispatching to "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v9, Landroid/os/Message;->target:Landroid/os/Handler;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v9, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " what="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v9, Landroid/os/Message;->what:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_5
    invoke-virtual {v9}, Landroid/os/Message;->recycleUnchecked()V

    goto/16 :goto_0

    .line 237
    .end local v12    # "newIdent":J
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 238
    .local v14, "t1":J
    iget-object v0, v9, Landroid/os/Message;->target:Landroid/os/Handler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 239
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    sub-long v16, v18, v14

    .line 240
    .local v16, "t2":J
    const-wide/16 v18, 0x32

    cmp-long v18, v16, v18

    if-ltz v18, :cond_3

    .line 243
    const-wide/16 v18, 0xfa

    cmp-long v18, v16, v18

    if-gez v18, :cond_7

    sget-object v18, Landroid/os/Looper;->sMainLooper:Landroid/os/Looper;

    move-object/from16 v0, v18

    if-ne v8, v0, :cond_7

    .line 245
    sget v18, Landroid/os/Looper;->sLatencyCountFast:I

    add-int/lit8 v18, v18, 0x1

    sput v18, Landroid/os/Looper;->sLatencyCountFast:I

    .line 246
    sget-wide v18, Landroid/os/Looper;->sLatencySumFast:J

    add-long v18, v18, v16

    sput-wide v18, Landroid/os/Looper;->sLatencySumFast:J

    .line 247
    sget v18, Landroid/os/Looper;->sLatencyCountFast:I

    const/16 v19, 0x64

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_3

    .line 248
    invoke-static {v9}, Landroid/os/Looper;->getAction(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v2

    .line 249
    .local v2, "action":Ljava/lang/String;
    sget-wide v18, Landroid/os/Looper;->sLatencySumFast:J

    sget v20, Landroid/os/Looper;->sLatencyCountFast:I

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    div-long v4, v18, v20

    .line 250
    .local v4, "avg":J
    const/16 v18, 0xaab

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string/jumbo v21, "mainloop2_latency1"

    aput-object v21, v19, v20

    const/16 v20, 0x1

    aput-object v2, v19, v20

    const/16 v20, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 251
    const/16 v18, 0x0

    sput v18, Landroid/os/Looper;->sLatencyCountFast:I

    .line 252
    const-wide/16 v18, 0x0

    sput-wide v18, Landroid/os/Looper;->sLatencySumFast:J

    goto/16 :goto_1

    .line 255
    .end local v2    # "action":Ljava/lang/String;
    .end local v4    # "avg":J
    :cond_7
    const-wide/16 v18, 0x3e8

    cmp-long v18, v16, v18

    if-gez v18, :cond_8

    sget-object v18, Landroid/os/Looper;->sMainLooper:Landroid/os/Looper;

    move-object/from16 v0, v18

    if-ne v8, v0, :cond_8

    .line 256
    sget v18, Landroid/os/Looper;->sLatencyCountSlow:I

    add-int/lit8 v18, v18, 0x1

    sput v18, Landroid/os/Looper;->sLatencyCountSlow:I

    .line 257
    sget-wide v18, Landroid/os/Looper;->sLatencySumSlow:J

    add-long v18, v18, v16

    sput-wide v18, Landroid/os/Looper;->sLatencySumSlow:J

    .line 258
    sget v18, Landroid/os/Looper;->sLatencyCountSlow:I

    const/16 v19, 0xa

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_3

    .line 259
    invoke-static {v9}, Landroid/os/Looper;->getAction(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v2

    .line 260
    .restart local v2    # "action":Ljava/lang/String;
    sget-wide v18, Landroid/os/Looper;->sLatencySumSlow:J

    sget v20, Landroid/os/Looper;->sLatencyCountSlow:I

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    div-long v4, v18, v20

    .line 261
    .restart local v4    # "avg":J
    const/16 v18, 0xaab

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string/jumbo v21, "mainloop2_latency2"

    aput-object v21, v19, v20

    const/16 v20, 0x1

    aput-object v2, v19, v20

    const/16 v20, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 262
    const/16 v18, 0x0

    sput v18, Landroid/os/Looper;->sLatencyCountSlow:I

    .line 263
    const-wide/16 v18, 0x0

    sput-wide v18, Landroid/os/Looper;->sLatencySumSlow:J

    goto/16 :goto_1

    .line 266
    .end local v2    # "action":Ljava/lang/String;
    .end local v4    # "avg":J
    :cond_8
    const-wide/16 v18, 0x3e8

    cmp-long v18, v16, v18

    if-ltz v18, :cond_3

    .line 267
    sget-object v18, Landroid/os/Looper;->sMainLooper:Landroid/os/Looper;

    move-object/from16 v0, v18

    if-ne v8, v0, :cond_9

    const-string/jumbo v10, "mainloop2"

    .line 268
    .local v10, "namePrif":Ljava/lang/String;
    :goto_2
    invoke-static {v9}, Landroid/os/Looper;->getAction(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v2

    .line 269
    .restart local v2    # "action":Ljava/lang/String;
    const/16 v18, 0xaab

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "_bad"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    aput-object v2, v19, v20

    const/16 v20, 0x2

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto/16 :goto_1

    .line 267
    .end local v2    # "action":Ljava/lang/String;
    .end local v10    # "namePrif":Ljava/lang/String;
    :cond_9
    const-string/jumbo v10, "subloop2"

    goto :goto_2
.end method

.method public static myLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 297
    sget-object v0, Landroid/os/Looper;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    return-object v0
.end method

.method public static myQueue()Landroid/os/MessageQueue;
    .locals 1

    .prologue
    .line 306
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v0, v0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    return-object v0
.end method

.method public static prepare()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/Looper;->prepare(Z)V

    .line 100
    return-void
.end method

.method private static prepare(Z)V
    .locals 2
    .param p0, "quitAllowed"    # Z

    .prologue
    .line 103
    sget-object v0, Landroid/os/Looper;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Only one Looper may be created per thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_0
    sget-object v0, Landroid/os/Looper;->sThreadLocal:Ljava/lang/ThreadLocal;

    new-instance v1, Landroid/os/Looper;

    invoke-direct {v1, p0}, Landroid/os/Looper;-><init>(Z)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 107
    return-void
.end method

.method public static prepareMainLooper()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 116
    invoke-static {v2}, Landroid/os/Looper;->prepare(Z)V

    .line 117
    const-class v1, Landroid/os/Looper;

    monitor-enter v1

    .line 118
    :try_start_0
    sget-object v0, Landroid/os/Looper;->sMainLooper:Landroid/os/Looper;

    if-eqz v0, :cond_0

    .line 119
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "The main Looper has already been prepared."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 121
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    sput-object v0, Landroid/os/Looper;->sMainLooper:Landroid/os/Looper;

    .line 122
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    const-string/jumbo v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    sget-boolean v0, Landroid/os/Looper;->sLatencyEnabled:Z

    if-nez v0, :cond_1

    .line 127
    sput-wide v4, Landroid/os/Looper;->sLatencySumFast:J

    .line 128
    sput v2, Landroid/os/Looper;->sLatencyCountFast:I

    .line 129
    sput-wide v4, Landroid/os/Looper;->sLatencySumSlow:J

    .line 130
    sput v2, Landroid/os/Looper;->sLatencyCountSlow:I

    .line 131
    const/4 v0, 0x1

    sput-boolean v0, Landroid/os/Looper;->sLatencyEnabled:Z

    .line 134
    :cond_1
    return-void
.end method


# virtual methods
.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Looper;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/MessageQueue;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 397
    return-void
.end method

.method public getQueue()Landroid/os/MessageQueue;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    return-object v0
.end method

.method public getThread()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    return-object v0
.end method

.method public isCurrentThread()Z
    .locals 2

    .prologue
    .line 318
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public quit()V
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->quit(Z)V

    .line 352
    return-void
.end method

.method public quitSafely()V
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->quit(Z)V

    .line 368
    return-void
.end method

.method public setMessageLogging(Landroid/util/Printer;)V
    .locals 0
    .param p1, "printer"    # Landroid/util/Printer;

    .prologue
    .line 331
    iput-object p1, p0, Landroid/os/Looper;->mLogging:Landroid/util/Printer;

    .line 332
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Looper ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
