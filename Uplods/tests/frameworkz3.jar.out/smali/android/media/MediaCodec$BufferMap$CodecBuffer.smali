.class Landroid/media/MediaCodec$BufferMap$CodecBuffer;
.super Ljava/lang/Object;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec$BufferMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CodecBuffer"
.end annotation


# instance fields
.field private mByteBuffer:Ljava/nio/ByteBuffer;

.field private mImage:Landroid/media/Image;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaCodec$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/media/MediaCodec$1;

    .prologue
    .line 2628
    invoke-direct {p0}, Landroid/media/MediaCodec$BufferMap$CodecBuffer;-><init>()V

    return-void
.end method


# virtual methods
.method public free()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2633
    iget-object v0, p0, Landroid/media/MediaCodec$BufferMap$CodecBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 2635
    iget-object v0, p0, Landroid/media/MediaCodec$BufferMap$CodecBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 2636
    iput-object v1, p0, Landroid/media/MediaCodec$BufferMap$CodecBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 2638
    :cond_0
    iget-object v0, p0, Landroid/media/MediaCodec$BufferMap$CodecBuffer;->mImage:Landroid/media/Image;

    if-eqz v0, :cond_1

    .line 2639
    iget-object v0, p0, Landroid/media/MediaCodec$BufferMap$CodecBuffer;->mImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 2640
    iput-object v1, p0, Landroid/media/MediaCodec$BufferMap$CodecBuffer;->mImage:Landroid/media/Image;

    .line 2642
    :cond_1
    return-void
.end method

.method public setByteBuffer(Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 2650
    invoke-virtual {p0}, Landroid/media/MediaCodec$BufferMap$CodecBuffer;->free()V

    .line 2651
    iput-object p1, p0, Landroid/media/MediaCodec$BufferMap$CodecBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 2652
    return-void
.end method

.method public setImage(Landroid/media/Image;)V
    .locals 0
    .param p1, "image"    # Landroid/media/Image;

    .prologue
    .line 2645
    invoke-virtual {p0}, Landroid/media/MediaCodec$BufferMap$CodecBuffer;->free()V

    .line 2646
    iput-object p1, p0, Landroid/media/MediaCodec$BufferMap$CodecBuffer;->mImage:Landroid/media/Image;

    .line 2647
    return-void
.end method
