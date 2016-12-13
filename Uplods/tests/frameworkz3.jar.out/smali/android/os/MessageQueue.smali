.class public final Landroid/os/MessageQueue;
.super Ljava/lang/Object;
.source "MessageQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/MessageQueue$FileDescriptorRecord;,
        Landroid/os/MessageQueue$OnFileDescriptorEventListener;,
        Landroid/os/MessageQueue$IdleHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_MESSAGES:Z

.field private static final TAG:Ljava/lang/String; = "MessageQueue"


# instance fields
.field private mBlocked:Z

.field private mFileDescriptorRecords:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/MessageQueue$FileDescriptorRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mIdleHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/MessageQueue$IdleHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mLastTimeoutMessage:Landroid/os/Message;

.field private mLastTimeoutMessageWhen:J

.field mMessages:Landroid/os/Message;

.field private mNextBarrierToken:I

.field private mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

.field private mPtr:J

.field private final mQuitAllowed:Z

.field private mQuitting:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/os/MessageQueue;->DEBUG_MESSAGES:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Z)V
    .locals 2
    .param p1, "quitAllowed"    # Z

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    .line 67
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Landroid/os/MessageQueue;->mLastTimeoutMessageWhen:J

    .line 77
    iput-boolean p1, p0, Landroid/os/MessageQueue;->mQuitAllowed:Z

    .line 78
    invoke-static {}, Landroid/os/MessageQueue;->nativeInit()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    .line 79
    return-void
.end method

.method private dispatchEvents(II)I
    .locals 7
    .param p1, "fd"    # I
    .param p2, "events"    # I

    .prologue
    .line 273
    monitor-enter p0

    .line 274
    :try_start_0
    iget-object v6, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/MessageQueue$FileDescriptorRecord;

    .line 275
    .local v4, "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    if-nez v4, :cond_0

    .line 276
    const/4 v3, 0x0

    monitor-exit p0

    .line 312
    :goto_0
    return v3

    .line 279
    :cond_0
    iget v3, v4, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    .line 280
    .local v3, "oldWatchedEvents":I
    and-int/2addr p2, v3

    .line 281
    if-nez p2, :cond_1

    .line 282
    monitor-exit p0

    goto :goto_0

    .line 287
    .end local v3    # "oldWatchedEvents":I
    .end local v4    # "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 285
    .restart local v3    # "oldWatchedEvents":I
    .restart local v4    # "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    :cond_1
    :try_start_1
    iget-object v1, v4, Landroid/os/MessageQueue$FileDescriptorRecord;->mListener:Landroid/os/MessageQueue$OnFileDescriptorEventListener;

    .line 286
    .local v1, "listener":Landroid/os/MessageQueue$OnFileDescriptorEventListener;
    iget v5, v4, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I

    .line 287
    .local v5, "seq":I
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 290
    iget-object v6, v4, Landroid/os/MessageQueue$FileDescriptorRecord;->mDescriptor:Ljava/io/FileDescriptor;

    invoke-interface {v1, v6, p2}, Landroid/os/MessageQueue$OnFileDescriptorEventListener;->onFileDescriptorEvents(Ljava/io/FileDescriptor;I)I

    move-result v2

    .line 292
    .local v2, "newWatchedEvents":I
    if-eqz v2, :cond_2

    .line 293
    or-int/lit8 v2, v2, 0x4

    .line 298
    :cond_2
    if-eq v2, v3, :cond_4

    .line 299
    monitor-enter p0

    .line 300
    :try_start_2
    iget-object v6, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 301
    .local v0, "index":I
    if-ltz v0, :cond_3

    iget-object v6, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v4, :cond_3

    iget v6, v4, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I

    if-ne v6, v5, :cond_3

    .line 303
    iput v2, v4, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    .line 304
    if-nez v2, :cond_3

    .line 305
    iget-object v6, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 308
    :cond_3
    monitor-exit p0

    .end local v0    # "index":I
    :cond_4
    move v3, v2

    .line 312
    goto :goto_0

    .line 308
    :catchall_1
    move-exception v6

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6
.end method

.method private dispose()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 93
    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 94
    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/MessageQueue;->nativeDestroy(J)V

    .line 95
    iput-wide v2, p0, Landroid/os/MessageQueue;->mPtr:J

    .line 97
    :cond_0
    return-void
.end method

.method private isPollingLocked()Z
    .locals 2

    .prologue
    .line 167
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/MessageQueue;->nativeIsPolling(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeInit()J
.end method

.method private static native nativeIsPolling(J)Z
.end method

.method private native nativePollOnce(JI)V
.end method

.method private static native nativeSetFileDescriptorEvents(JII)V
.end method

.method private static native nativeWake(J)V
.end method

.method private postSyncBarrier(J)I
    .locals 7
    .param p1, "when"    # J

    .prologue
    .line 522
    monitor-enter p0

    .line 523
    :try_start_0
    iget v3, p0, Landroid/os/MessageQueue;->mNextBarrierToken:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/os/MessageQueue;->mNextBarrierToken:I

    .line 524
    .local v3, "token":I
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 525
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->markInUse()V

    .line 526
    iput-wide p1, v0, Landroid/os/Message;->when:J

    .line 527
    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 529
    const/4 v2, 0x0

    .line 530
    .local v2, "prev":Landroid/os/Message;
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 531
    .local v1, "p":Landroid/os/Message;
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-eqz v4, :cond_0

    .line 532
    :goto_0
    if-eqz v1, :cond_0

    iget-wide v4, v1, Landroid/os/Message;->when:J

    cmp-long v4, v4, p1

    if-gtz v4, :cond_0

    .line 533
    move-object v2, v1

    .line 534
    iget-object v1, v1, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_0

    .line 537
    :cond_0
    if-eqz v2, :cond_1

    .line 538
    iput-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 539
    iput-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 544
    :goto_1
    monitor-exit p0

    return v3

    .line 541
    :cond_1
    iput-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 542
    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    goto :goto_1

    .line 545
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "p":Landroid/os/Message;
    .end local v2    # "prev":Landroid/os/Message;
    .end local v3    # "token":I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private removeAllFutureMessagesLocked()V
    .locals 6

    .prologue
    .line 790
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 791
    .local v2, "now":J
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 792
    .local v1, "p":Landroid/os/Message;
    if-eqz v1, :cond_0

    .line 793
    iget-wide v4, v1, Landroid/os/Message;->when:J

    cmp-long v4, v4, v2

    if-lez v4, :cond_2

    .line 794
    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllMessagesLocked()V

    .line 815
    :cond_0
    :goto_0
    return-void

    .line 805
    .local v0, "n":Landroid/os/Message;
    :cond_1
    move-object v1, v0

    .line 798
    .end local v0    # "n":Landroid/os/Message;
    :cond_2
    iget-object v0, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 799
    .restart local v0    # "n":Landroid/os/Message;
    if-eqz v0, :cond_0

    .line 802
    iget-wide v4, v0, Landroid/os/Message;->when:J

    cmp-long v4, v4, v2

    if-lez v4, :cond_1

    .line 807
    const/4 v4, 0x0

    iput-object v4, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 809
    :cond_3
    move-object v1, v0

    .line 810
    iget-object v0, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 811
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    .line 812
    if-nez v0, :cond_3

    goto :goto_0
.end method

.method private removeAllMessagesLocked()V
    .locals 3

    .prologue
    .line 780
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 781
    .local v1, "p":Landroid/os/Message;
    :goto_0
    if-eqz v1, :cond_0

    .line 782
    iget-object v0, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 783
    .local v0, "n":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    .line 784
    move-object v1, v0

    .line 785
    goto :goto_0

    .line 786
    .end local v0    # "n":Landroid/os/Message;
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 787
    return-void
.end method

.method private updateOnFileDescriptorEventListenerLocked(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "events"    # I
    .param p3, "listener"    # Landroid/os/MessageQueue$OnFileDescriptorEventListener;

    .prologue
    .line 232
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    .line 234
    .local v0, "fdNum":I
    const/4 v1, -0x1

    .line 235
    .local v1, "index":I
    const/4 v2, 0x0

    .line 236
    .local v2, "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    iget-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    if-eqz v3, :cond_1

    .line 237
    iget-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 238
    if-ltz v1, :cond_1

    .line 239
    iget-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    check-cast v2, Landroid/os/MessageQueue$FileDescriptorRecord;

    .line 240
    .restart local v2    # "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    if-eqz v2, :cond_1

    iget v3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    if-ne v3, p2, :cond_1

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    if-eqz p2, :cond_4

    .line 247
    or-int/lit8 p2, p2, 0x4

    .line 248
    if-nez v2, :cond_3

    .line 249
    iget-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    if-nez v3, :cond_2

    .line 250
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    .line 252
    :cond_2
    new-instance v2, Landroid/os/MessageQueue$FileDescriptorRecord;

    .end local v2    # "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    invoke-direct {v2, p1, p2, p3}, Landroid/os/MessageQueue$FileDescriptorRecord;-><init>(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    .line 253
    .restart local v2    # "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    iget-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 259
    :goto_1
    iget-wide v4, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v4, v5, v0, p2}, Landroid/os/MessageQueue;->nativeSetFileDescriptorEvents(JII)V

    goto :goto_0

    .line 255
    :cond_3
    iput-object p3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mListener:Landroid/os/MessageQueue$OnFileDescriptorEventListener;

    .line 256
    iput p2, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    .line 257
    iget v3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I

    goto :goto_1

    .line 260
    :cond_4
    if-eqz v2, :cond_0

    .line 261
    const/4 v3, 0x0

    iput v3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    .line 262
    iget-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_0
.end method


# virtual methods
.method public addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/MessageQueue$IdleHandler;

    .prologue
    .line 124
    if-nez p1, :cond_0

    .line 125
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t add a null IdleHandler"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    monitor-enter p0

    .line 128
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    monitor-exit p0

    .line 130
    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addOnFileDescriptorEventListener(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "events"    # I
    .param p3, "listener"    # Landroid/os/MessageQueue$OnFileDescriptorEventListener;

    .prologue
    .line 196
    if-nez p1, :cond_0

    .line 197
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fd must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_0
    if-nez p3, :cond_1

    .line 200
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_1
    monitor-enter p0

    .line 204
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->updateOnFileDescriptorEventListenerLocked(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    .line 205
    monitor-exit p0

    .line 206
    return-void

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 6
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 818
    monitor-enter p0

    .line 819
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 820
    .local v2, "now":J
    const/4 v1, 0x0

    .line 821
    .local v1, "n":I
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .local v0, "msg":Landroid/os/Message;
    :goto_0
    if-eqz v0, :cond_0

    .line 822
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, v2, v3}, Landroid/os/Message;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 823
    add-int/lit8 v1, v1, 0x1

    .line 821
    iget-object v0, v0, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_0

    .line 825
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "(Total messages: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", polling="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Landroid/os/MessageQueue;->isPollingLocked()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", quitting="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Landroid/os/MessageQueue;->mQuitting:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 827
    monitor-exit p0

    .line 828
    return-void

    .line 827
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "n":I
    .end local v2    # "now":J
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method enqueueMessage(Landroid/os/Message;J)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "when"    # J

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 591
    iget-object v5, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v5, :cond_0

    .line 592
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Message must have a target."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 594
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->isInUse()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 595
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " This message is already in use."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 598
    :cond_1
    monitor-enter p0

    .line 599
    :try_start_0
    iget-boolean v5, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-eqz v5, :cond_2

    .line 600
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sending message to a Handler on a dead thread"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 602
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v4, "MessageQueue"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 603
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    .line 604
    monitor-exit p0

    .line 641
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    return v1

    .line 607
    :cond_2
    invoke-virtual {p1}, Landroid/os/Message;->markInUse()V

    .line 608
    iput-wide p2, p1, Landroid/os/Message;->when:J

    .line 609
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 611
    .local v2, "p":Landroid/os/Message;
    if-eqz v2, :cond_3

    const-wide/16 v6, 0x0

    cmp-long v5, p2, v6

    if-eqz v5, :cond_3

    iget-wide v6, v2, Landroid/os/Message;->when:J

    cmp-long v5, p2, v6

    if-gez v5, :cond_5

    .line 613
    :cond_3
    iput-object v2, p1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 614
    iput-object p1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 615
    iget-boolean v1, p0, Landroid/os/MessageQueue;->mBlocked:Z

    .line 637
    .local v1, "needWake":Z
    :goto_1
    if-eqz v1, :cond_4

    .line 638
    iget-wide v6, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v6, v7}, Landroid/os/MessageQueue;->nativeWake(J)V

    .line 640
    :cond_4
    monitor-exit p0

    move v1, v4

    .line 641
    goto :goto_0

    .line 620
    .end local v1    # "needWake":Z
    :cond_5
    iget-boolean v5, p0, Landroid/os/MessageQueue;->mBlocked:Z

    if-eqz v5, :cond_6

    iget-object v5, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v5, :cond_6

    invoke-virtual {p1}, Landroid/os/Message;->isAsynchronous()Z

    move-result v5

    if-eqz v5, :cond_6

    move v1, v4

    .line 623
    .restart local v1    # "needWake":Z
    :cond_6
    :goto_2
    move-object v3, v2

    .line 624
    .local v3, "prev":Landroid/os/Message;
    iget-object v2, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 625
    if-eqz v2, :cond_7

    iget-wide v6, v2, Landroid/os/Message;->when:J

    cmp-long v5, p2, v6

    if-gez v5, :cond_8

    .line 632
    :cond_7
    iput-object v2, p1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 633
    iput-object p1, v3, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_1

    .line 640
    .end local v1    # "needWake":Z
    .end local v2    # "p":Landroid/os/Message;
    .end local v3    # "prev":Landroid/os/Message;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 628
    .restart local v1    # "needWake":Z
    .restart local v2    # "p":Landroid/os/Message;
    .restart local v3    # "prev":Landroid/os/Message;
    :cond_8
    if-eqz v1, :cond_6

    :try_start_1
    invoke-virtual {v2}, Landroid/os/Message;->isAsynchronous()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eqz v5, :cond_6

    .line 629
    const/4 v1, 0x0

    goto :goto_2
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 84
    :try_start_0
    invoke-direct {p0}, Landroid/os/MessageQueue;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 88
    return-void

    .line 86
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method hasMessages(Landroid/os/Handler;ILjava/lang/Object;)Z
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 645
    if-nez p1, :cond_0

    .line 657
    :goto_0
    return v1

    .line 649
    :cond_0
    monitor-enter p0

    .line 650
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 651
    .local v0, "p":Landroid/os/Message;
    :goto_1
    if-eqz v0, :cond_3

    .line 652
    iget-object v2, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_2

    iget v2, v0, Landroid/os/Message;->what:I

    if-ne v2, p2, :cond_2

    if-eqz p3, :cond_1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v2, p3, :cond_2

    .line 653
    :cond_1
    const/4 v1, 0x1

    monitor-exit p0

    goto :goto_0

    .line 658
    .end local v0    # "p":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 655
    .restart local v0    # "p":Landroid/os/Message;
    :cond_2
    :try_start_1
    iget-object v0, v0, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_1

    .line 657
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method hasMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "r"    # Ljava/lang/Runnable;
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 662
    if-nez p1, :cond_0

    .line 674
    :goto_0
    return v1

    .line 666
    :cond_0
    monitor-enter p0

    .line 667
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 668
    .local v0, "p":Landroid/os/Message;
    :goto_1
    if-eqz v0, :cond_3

    .line 669
    iget-object v2, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_2

    iget-object v2, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v2, p2, :cond_2

    if-eqz p3, :cond_1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v2, p3, :cond_2

    .line 670
    :cond_1
    const/4 v1, 0x1

    monitor-exit p0

    goto :goto_0

    .line 675
    .end local v0    # "p":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 672
    .restart local v0    # "p":Landroid/os/Message;
    :cond_2
    :try_start_1
    iget-object v0, v0, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_1

    .line 674
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public isIdle()Z
    .locals 4

    .prologue
    .line 107
    monitor-enter p0

    .line 108
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 109
    .local v0, "now":J
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iget-wide v2, v2, Landroid/os/Message;->when:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    monitor-exit p0

    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 110
    .end local v0    # "now":J
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public isPolling()Z
    .locals 1

    .prologue
    .line 159
    monitor-enter p0

    .line 160
    :try_start_0
    invoke-direct {p0}, Landroid/os/MessageQueue;->isPollingLocked()Z

    move-result v0

    monitor-exit p0

    return v0

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method next()Landroid/os/Message;
    .locals 26

    .prologue
    .line 319
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/os/MessageQueue;->mPtr:J

    move-wide/from16 v20, v0

    .line 320
    .local v20, "ptr":J
    const-wide/16 v22, 0x0

    cmp-long v22, v20, v22

    if-nez v22, :cond_0

    .line 321
    const/4 v11, 0x0

    .line 419
    :goto_0
    return-object v11

    .line 324
    :cond_0
    const/16 v17, -0x1

    .line 325
    .local v17, "pendingIdleHandlerCount":I
    const/4 v13, 0x0

    .line 327
    .local v13, "nextPollTimeoutMillis":I
    :goto_1
    if-eqz v13, :cond_1

    .line 328
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    .line 331
    :cond_1
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2, v13}, Landroid/os/MessageQueue;->nativePollOnce(JI)V

    .line 333
    monitor-enter p0

    .line 335
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 336
    .local v14, "now":J
    const/16 v18, 0x0

    .line 337
    .local v18, "prevMsg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 338
    .local v11, "msg":Landroid/os/Message;
    if-eqz v11, :cond_3

    iget-object v0, v11, Landroid/os/Message;->target:Landroid/os/Handler;

    move-object/from16 v22, v0

    if-nez v22, :cond_3

    .line 341
    :cond_2
    move-object/from16 v18, v11

    .line 342
    iget-object v11, v11, Landroid/os/Message;->next:Landroid/os/Message;

    .line 343
    if-eqz v11, :cond_3

    invoke-virtual {v11}, Landroid/os/Message;->isAsynchronous()Z

    move-result v22

    if-eqz v22, :cond_2

    .line 345
    :cond_3
    if-eqz v11, :cond_f

    .line 346
    iget-wide v0, v11, Landroid/os/Message;->when:J

    move-wide/from16 v22, v0

    cmp-long v22, v14, v22

    if-gez v22, :cond_4

    .line 348
    iget-wide v0, v11, Landroid/os/Message;->when:J

    move-wide/from16 v22, v0

    sub-long v22, v22, v14

    const-wide/32 v24, 0x7fffffff

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v13, v0

    .line 417
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/os/MessageQueue;->mQuitting:Z

    move/from16 v22, v0

    if-eqz v22, :cond_10

    .line 418
    invoke-direct/range {p0 .. p0}, Landroid/os/MessageQueue;->dispose()V

    .line 419
    const/4 v11, 0x0

    monitor-exit p0

    goto :goto_0

    .line 439
    .end local v11    # "msg":Landroid/os/Message;
    .end local v14    # "now":J
    .end local v18    # "prevMsg":Landroid/os/Message;
    :catchall_0
    move-exception v22

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v22

    .line 350
    .restart local v11    # "msg":Landroid/os/Message;
    .restart local v14    # "now":J
    .restart local v18    # "prevMsg":Landroid/os/Message;
    :cond_4
    :try_start_1
    sget-boolean v22, Landroid/os/MessageQueue;->DEBUG_MESSAGES:Z

    if-eqz v22, :cond_d

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/MessageQueue;->mLastTimeoutMessage:Landroid/os/Message;

    move-object/from16 v22, v0

    if-eqz v22, :cond_6

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/os/MessageQueue;->mLastTimeoutMessageWhen:J

    move-wide/from16 v22, v0

    iget-wide v0, v11, Landroid/os/Message;->when:J

    move-wide/from16 v24, v0

    cmp-long v22, v22, v24

    if-gtz v22, :cond_6

    .line 357
    const/4 v4, 0x0

    .line 358
    .local v4, "found":Z
    iget-object v10, v11, Landroid/os/Message;->next:Landroid/os/Message;

    .line 359
    .local v10, "m":Landroid/os/Message;
    :goto_3
    if-eqz v10, :cond_5

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/os/MessageQueue;->mLastTimeoutMessageWhen:J

    move-wide/from16 v22, v0

    iget-wide v0, v10, Landroid/os/Message;->when:J

    move-wide/from16 v24, v0

    cmp-long v22, v22, v24

    if-nez v22, :cond_5

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/MessageQueue;->mLastTimeoutMessage:Landroid/os/Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    if-ne v0, v10, :cond_9

    .line 361
    const/4 v4, 0x1

    .line 366
    :cond_5
    if-nez v4, :cond_6

    .line 367
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/os/MessageQueue;->mLastTimeoutMessage:Landroid/os/Message;

    .line 368
    const-wide v22, 0x7fffffffffffffffL

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/os/MessageQueue;->mLastTimeoutMessageWhen:J

    .line 372
    .end local v4    # "found":Z
    .end local v10    # "m":Landroid/os/Message;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/MessageQueue;->mLastTimeoutMessage:Landroid/os/Message;

    move-object/from16 v22, v0

    if-nez v22, :cond_d

    .line 373
    iget-object v0, v11, Landroid/os/Message;->target:Landroid/os/Handler;

    move-object/from16 v22, v0

    if-nez v22, :cond_a

    const/4 v7, 0x1

    .line 374
    .local v7, "isSyncBarrier":Z
    :goto_4
    const/4 v9, 0x0

    .line 375
    .local v9, "lastTimeoutMessage":Landroid/os/Message;
    const/16 v16, 0x0

    .line 376
    .local v16, "numTimeoutMessages":I
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .restart local v10    # "m":Landroid/os/Message;
    :goto_5
    if-eqz v10, :cond_b

    iget-wide v0, v10, Landroid/os/Message;->when:J

    move-wide/from16 v22, v0

    cmp-long v22, v22, v14

    if-gtz v22, :cond_b

    .line 379
    if-eqz v7, :cond_7

    invoke-virtual {v10}, Landroid/os/Message;->isAsynchronous()Z

    move-result v22

    if-eqz v22, :cond_8

    .line 380
    :cond_7
    add-int/lit8 v16, v16, 0x1

    .line 381
    move-object v9, v10

    .line 377
    :cond_8
    iget-object v10, v10, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_5

    .line 364
    .end local v7    # "isSyncBarrier":Z
    .end local v9    # "lastTimeoutMessage":Landroid/os/Message;
    .end local v16    # "numTimeoutMessages":I
    .restart local v4    # "found":Z
    :cond_9
    iget-object v10, v10, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_3

    .line 373
    .end local v4    # "found":Z
    .end local v10    # "m":Landroid/os/Message;
    :cond_a
    const/4 v7, 0x0

    goto :goto_4

    .line 385
    .restart local v7    # "isSyncBarrier":Z
    .restart local v9    # "lastTimeoutMessage":Landroid/os/Message;
    .restart local v10    # "m":Landroid/os/Message;
    .restart local v16    # "numTimeoutMessages":I
    :cond_b
    const/16 v22, 0x23

    move/from16 v0, v16

    move/from16 v1, v22

    if-le v0, v1, :cond_d

    .line 386
    const-string v22, "MessageQueue"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Timeout messages: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const/4 v12, 0x0

    .line 388
    .local v12, "n":I
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    :goto_6
    if-eqz v10, :cond_c

    iget-wide v0, v10, Landroid/os/Message;->when:J

    move-wide/from16 v22, v0

    cmp-long v22, v22, v14

    if-gtz v22, :cond_c

    .line 390
    const-string v22, "MessageQueue"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  Message "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ": "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v10, v14, v15}, Landroid/os/Message;->toString(J)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    add-int/lit8 v12, v12, 0x1

    .line 389
    iget-object v10, v10, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_6

    .line 393
    :cond_c
    move-object/from16 v0, p0

    iput-object v9, v0, Landroid/os/MessageQueue;->mLastTimeoutMessage:Landroid/os/Message;

    .line 394
    iget-wide v0, v9, Landroid/os/Message;->when:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/os/MessageQueue;->mLastTimeoutMessageWhen:J

    .line 400
    .end local v7    # "isSyncBarrier":Z
    .end local v9    # "lastTimeoutMessage":Landroid/os/Message;
    .end local v10    # "m":Landroid/os/Message;
    .end local v12    # "n":I
    .end local v16    # "numTimeoutMessages":I
    :cond_d
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/os/MessageQueue;->mBlocked:Z

    .line 401
    if-eqz v18, :cond_e

    .line 402
    iget-object v0, v11, Landroid/os/Message;->next:Landroid/os/Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 406
    :goto_7
    const/16 v22, 0x0

    move-object/from16 v0, v22

    iput-object v0, v11, Landroid/os/Message;->next:Landroid/os/Message;

    .line 408
    invoke-virtual {v11}, Landroid/os/Message;->markInUse()V

    .line 409
    monitor-exit p0

    goto/16 :goto_0

    .line 404
    :cond_e
    iget-object v0, v11, Landroid/os/Message;->next:Landroid/os/Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    goto :goto_7

    .line 413
    :cond_f
    const/4 v13, -0x1

    goto/16 :goto_2

    .line 425
    :cond_10
    if-gez v17, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    move-object/from16 v22, v0

    if-eqz v22, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-wide v0, v0, Landroid/os/Message;->when:J

    move-wide/from16 v22, v0

    cmp-long v22, v14, v22

    if-gez v22, :cond_12

    .line 427
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 429
    :cond_12
    if-gtz v17, :cond_13

    .line 431
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/os/MessageQueue;->mBlocked:Z

    .line 432
    monitor-exit p0

    goto/16 :goto_1

    .line 435
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    move-object/from16 v22, v0

    if-nez v22, :cond_14

    .line 436
    const/16 v22, 0x4

    move/from16 v0, v17

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v0, v22

    new-array v0, v0, [Landroid/os/MessageQueue$IdleHandler;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    .line 438
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [Landroid/os/MessageQueue$IdleHandler;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    .line 439
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 443
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_8
    move/from16 v0, v17

    if-ge v5, v0, :cond_16

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    move-object/from16 v22, v0

    aget-object v6, v22, v5

    .line 445
    .local v6, "idler":Landroid/os/MessageQueue$IdleHandler;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v23, v22, v5

    .line 447
    const/4 v8, 0x0

    .line 449
    .local v8, "keep":Z
    :try_start_2
    invoke-interface {v6}, Landroid/os/MessageQueue$IdleHandler;->queueIdle()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v8

    .line 454
    :goto_9
    if-nez v8, :cond_15

    .line 455
    monitor-enter p0

    .line 456
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 457
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 443
    :cond_15
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 450
    :catch_0
    move-exception v19

    .line 451
    .local v19, "t":Ljava/lang/Throwable;
    const-string v22, "MessageQueue"

    const-string v23, "IdleHandler threw exception"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 457
    .end local v19    # "t":Ljava/lang/Throwable;
    :catchall_1
    move-exception v22

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v22

    .line 462
    .end local v6    # "idler":Landroid/os/MessageQueue$IdleHandler;
    .end local v8    # "keep":Z
    :cond_16
    const/16 v17, 0x0

    .line 466
    const/4 v13, 0x0

    goto/16 :goto_1
.end method

.method public postSyncBarrier()I
    .locals 2

    .prologue
    .line 516
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/os/MessageQueue;->postSyncBarrier(J)I

    move-result v0

    return v0
.end method

.method quit(Z)V
    .locals 2
    .param p1, "safe"    # Z

    .prologue
    .line 471
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitAllowed:Z

    if-nez v0, :cond_0

    .line 472
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Main thread not allowed to quit."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 475
    :cond_0
    monitor-enter p0

    .line 476
    :try_start_0
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-eqz v0, :cond_1

    .line 477
    monitor-exit p0

    .line 490
    :goto_0
    return-void

    .line 479
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    .line 481
    if-eqz p1, :cond_2

    .line 482
    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllFutureMessagesLocked()V

    .line 488
    :goto_1
    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/MessageQueue;->nativeWake(J)V

    .line 489
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 484
    :cond_2
    :try_start_1
    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllMessagesLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method removeCallbacksAndMessages(Landroid/os/Handler;Ljava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 747
    if-nez p1, :cond_0

    .line 777
    :goto_0
    return-void

    .line 751
    :cond_0
    monitor-enter p0

    .line 752
    :try_start_0
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 756
    .local v2, "p":Landroid/os/Message;
    :goto_1
    if-eqz v2, :cond_2

    iget-object v3, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_2

    if-eqz p2, :cond_1

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p2, :cond_2

    .line 757
    :cond_1
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 758
    .local v0, "n":Landroid/os/Message;
    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 759
    invoke-virtual {v2}, Landroid/os/Message;->recycleUnchecked()V

    .line 760
    move-object v2, v0

    .line 761
    goto :goto_1

    .line 764
    .end local v0    # "n":Landroid/os/Message;
    :cond_2
    :goto_2
    if-eqz v2, :cond_5

    .line 765
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 766
    .restart local v0    # "n":Landroid/os/Message;
    if-eqz v0, :cond_4

    .line 767
    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_4

    if-eqz p2, :cond_3

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p2, :cond_4

    .line 768
    :cond_3
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 769
    .local v1, "nn":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    .line 770
    iput-object v1, v2, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_2

    .line 776
    .end local v0    # "n":Landroid/os/Message;
    .end local v1    # "nn":Landroid/os/Message;
    .end local v2    # "p":Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 774
    .restart local v0    # "n":Landroid/os/Message;
    .restart local v2    # "p":Landroid/os/Message;
    :cond_4
    move-object v2, v0

    .line 775
    goto :goto_2

    .line 776
    .end local v0    # "n":Landroid/os/Message;
    :cond_5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/MessageQueue$IdleHandler;

    .prologue
    .line 142
    monitor-enter p0

    .line 143
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 144
    monitor-exit p0

    .line 145
    return-void

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method removeMessages(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 679
    if-nez p1, :cond_0

    .line 710
    :goto_0
    return-void

    .line 683
    :cond_0
    monitor-enter p0

    .line 684
    :try_start_0
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 688
    .local v2, "p":Landroid/os/Message;
    :goto_1
    if-eqz v2, :cond_2

    iget-object v3, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_2

    iget v3, v2, Landroid/os/Message;->what:I

    if-ne v3, p2, :cond_2

    if-eqz p3, :cond_1

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p3, :cond_2

    .line 689
    :cond_1
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 690
    .local v0, "n":Landroid/os/Message;
    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 691
    invoke-virtual {v2}, Landroid/os/Message;->recycleUnchecked()V

    .line 692
    move-object v2, v0

    .line 693
    goto :goto_1

    .line 696
    .end local v0    # "n":Landroid/os/Message;
    :cond_2
    :goto_2
    if-eqz v2, :cond_5

    .line 697
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 698
    .restart local v0    # "n":Landroid/os/Message;
    if-eqz v0, :cond_4

    .line 699
    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_4

    iget v3, v0, Landroid/os/Message;->what:I

    if-ne v3, p2, :cond_4

    if-eqz p3, :cond_3

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p3, :cond_4

    .line 701
    :cond_3
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 702
    .local v1, "nn":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    .line 703
    iput-object v1, v2, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_2

    .line 709
    .end local v0    # "n":Landroid/os/Message;
    .end local v1    # "nn":Landroid/os/Message;
    .end local v2    # "p":Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 707
    .restart local v0    # "n":Landroid/os/Message;
    .restart local v2    # "p":Landroid/os/Message;
    :cond_4
    move-object v2, v0

    .line 708
    goto :goto_2

    .line 709
    .end local v0    # "n":Landroid/os/Message;
    :cond_5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method removeMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "r"    # Ljava/lang/Runnable;
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 713
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 744
    :cond_0
    :goto_0
    return-void

    .line 717
    :cond_1
    monitor-enter p0

    .line 718
    :try_start_0
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 722
    .local v2, "p":Landroid/os/Message;
    :goto_1
    if-eqz v2, :cond_3

    iget-object v3, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_3

    iget-object v3, v2, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v3, p2, :cond_3

    if-eqz p3, :cond_2

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p3, :cond_3

    .line 723
    :cond_2
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 724
    .local v0, "n":Landroid/os/Message;
    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 725
    invoke-virtual {v2}, Landroid/os/Message;->recycleUnchecked()V

    .line 726
    move-object v2, v0

    .line 727
    goto :goto_1

    .line 730
    .end local v0    # "n":Landroid/os/Message;
    :cond_3
    :goto_2
    if-eqz v2, :cond_6

    .line 731
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 732
    .restart local v0    # "n":Landroid/os/Message;
    if-eqz v0, :cond_5

    .line 733
    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_5

    iget-object v3, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v3, p2, :cond_5

    if-eqz p3, :cond_4

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p3, :cond_5

    .line 735
    :cond_4
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 736
    .local v1, "nn":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    .line 737
    iput-object v1, v2, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_2

    .line 743
    .end local v0    # "n":Landroid/os/Message;
    .end local v1    # "nn":Landroid/os/Message;
    .end local v2    # "p":Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 741
    .restart local v0    # "n":Landroid/os/Message;
    .restart local v2    # "p":Landroid/os/Message;
    :cond_5
    move-object v2, v0

    .line 742
    goto :goto_2

    .line 743
    .end local v0    # "n":Landroid/os/Message;
    :cond_6
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public removeOnFileDescriptorEventListener(Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 221
    if-nez p1, :cond_0

    .line 222
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fd must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_0
    monitor-enter p0

    .line 226
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0, v1}, Landroid/os/MessageQueue;->updateOnFileDescriptorEventListenerLocked(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    .line 227
    monitor-exit p0

    .line 228
    return-void

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeSyncBarrier(I)V
    .locals 6
    .param p1, "token"    # I

    .prologue
    .line 561
    monitor-enter p0

    .line 562
    const/4 v2, 0x0

    .line 563
    .local v2, "prev":Landroid/os/Message;
    :try_start_0
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 564
    .local v1, "p":Landroid/os/Message;
    :goto_0
    if-eqz v1, :cond_1

    iget-object v3, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v3, :cond_0

    iget v3, v1, Landroid/os/Message;->arg1:I

    if-eq v3, p1, :cond_1

    .line 565
    :cond_0
    move-object v2, v1

    .line 566
    iget-object v1, v1, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_0

    .line 568
    :cond_1
    if-nez v1, :cond_2

    .line 569
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "The specified message queue synchronization  barrier token has not been posted or has already been removed."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 587
    .end local v1    # "p":Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 573
    .restart local v1    # "p":Landroid/os/Message;
    :cond_2
    if-eqz v2, :cond_4

    .line 574
    :try_start_1
    iget-object v3, v1, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v3, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 575
    const/4 v0, 0x0

    .line 580
    .local v0, "needWake":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    .line 584
    if-eqz v0, :cond_3

    iget-boolean v3, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-nez v3, :cond_3

    .line 585
    iget-wide v4, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v4, v5}, Landroid/os/MessageQueue;->nativeWake(J)V

    .line 587
    :cond_3
    monitor-exit p0

    .line 588
    return-void

    .line 577
    .end local v0    # "needWake":Z
    :cond_4
    iget-object v3, v1, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 578
    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iget-object v3, v3, Landroid/os/Message;->target:Landroid/os/Handler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_6

    :cond_5
    const/4 v0, 0x1

    .restart local v0    # "needWake":Z
    :goto_2
    goto :goto_1

    .end local v0    # "needWake":Z
    :cond_6
    const/4 v0, 0x0

    goto :goto_2
.end method
