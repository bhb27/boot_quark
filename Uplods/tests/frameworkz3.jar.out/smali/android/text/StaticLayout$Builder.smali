.class public final Landroid/text/StaticLayout$Builder;
.super Ljava/lang/Object;
.source "StaticLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/StaticLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool",
            "<",
            "Landroid/text/StaticLayout$Builder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAlignment:Landroid/text/Layout$Alignment;

.field mBreakStrategy:I

.field mEllipsize:Landroid/text/TextUtils$TruncateAt;

.field mEllipsizedWidth:I

.field mEnd:I

.field mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

.field mHyphenationFrequency:I

.field mIncludePad:Z

.field mLeftIndents:[I

.field mLocale:Ljava/util/Locale;

.field mMaxLines:I

.field mMeasuredText:Landroid/text/MeasuredText;

.field mNativePtr:J

.field mPaint:Landroid/text/TextPaint;

.field mRightIndents:[I

.field mSpacingAdd:F

.field mSpacingMult:F

.field mStart:I

.field mText:Ljava/lang/CharSequence;

.field mTextDir:Landroid/text/TextDirectionHeuristic;

.field mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 419
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/text/StaticLayout$Builder;->sPool:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 412
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 65
    # invokes: Landroid/text/StaticLayout;->nNewBuilder()J
    invoke-static {}, Landroid/text/StaticLayout;->access$000()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    .line 66
    return-void
.end method

.method static synthetic access$1000(Landroid/text/StaticLayout$Builder;Ljava/util/Locale;)V
    .locals 0
    .param p0, "x0"    # Landroid/text/StaticLayout$Builder;
    .param p1, "x1"    # Ljava/util/Locale;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/text/StaticLayout$Builder;->setLocale(Ljava/util/Locale;)V

    return-void
.end method

.method static synthetic access$900(Landroid/text/StaticLayout$Builder;)V
    .locals 0
    .param p0, "x0"    # Landroid/text/StaticLayout$Builder;

    .prologue
    .line 63
    invoke-static {p0}, Landroid/text/StaticLayout$Builder;->recycle(Landroid/text/StaticLayout$Builder;)V

    return-void
.end method

.method public static obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;
    .locals 3
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "paint"    # Landroid/text/TextPaint;
    .param p4, "width"    # I

    .prologue
    const/4 v2, 0x0

    .line 80
    sget-object v1, Landroid/text/StaticLayout$Builder;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v1}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/StaticLayout$Builder;

    .line 81
    .local v0, "b":Landroid/text/StaticLayout$Builder;
    if-nez v0, :cond_0

    .line 82
    new-instance v0, Landroid/text/StaticLayout$Builder;

    .end local v0    # "b":Landroid/text/StaticLayout$Builder;
    invoke-direct {v0}, Landroid/text/StaticLayout$Builder;-><init>()V

    .line 86
    .restart local v0    # "b":Landroid/text/StaticLayout$Builder;
    :cond_0
    iput-object p0, v0, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    .line 87
    iput p1, v0, Landroid/text/StaticLayout$Builder;->mStart:I

    .line 88
    iput p2, v0, Landroid/text/StaticLayout$Builder;->mEnd:I

    .line 89
    iput-object p3, v0, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    .line 90
    iput p4, v0, Landroid/text/StaticLayout$Builder;->mWidth:I

    .line 91
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v1, v0, Landroid/text/StaticLayout$Builder;->mAlignment:Landroid/text/Layout$Alignment;

    .line 92
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    iput-object v1, v0, Landroid/text/StaticLayout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 93
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/text/StaticLayout$Builder;->mSpacingMult:F

    .line 94
    const/4 v1, 0x0

    iput v1, v0, Landroid/text/StaticLayout$Builder;->mSpacingAdd:F

    .line 95
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    .line 96
    iput p4, v0, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    .line 97
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 98
    const v1, 0x7fffffff

    iput v1, v0, Landroid/text/StaticLayout$Builder;->mMaxLines:I

    .line 99
    iput v2, v0, Landroid/text/StaticLayout$Builder;->mBreakStrategy:I

    .line 100
    iput v2, v0, Landroid/text/StaticLayout$Builder;->mHyphenationFrequency:I

    .line 102
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v1

    iput-object v1, v0, Landroid/text/StaticLayout$Builder;->mMeasuredText:Landroid/text/MeasuredText;

    .line 103
    return-object v0
.end method

.method private static recycle(Landroid/text/StaticLayout$Builder;)V
    .locals 2
    .param p0, "b"    # Landroid/text/StaticLayout$Builder;

    .prologue
    const/4 v1, 0x0

    .line 107
    iput-object v1, p0, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    .line 108
    iput-object v1, p0, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    .line 109
    iget-object v0, p0, Landroid/text/StaticLayout$Builder;->mMeasuredText:Landroid/text/MeasuredText;

    invoke-static {v0}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    .line 110
    iput-object v1, p0, Landroid/text/StaticLayout$Builder;->mMeasuredText:Landroid/text/MeasuredText;

    .line 111
    iput-object v1, p0, Landroid/text/StaticLayout$Builder;->mLeftIndents:[I

    .line 112
    iput-object v1, p0, Landroid/text/StaticLayout$Builder;->mRightIndents:[I

    .line 113
    iget-wide v0, p0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    # invokes: Landroid/text/StaticLayout;->nFinishBuilder(J)V
    invoke-static {v0, v1}, Landroid/text/StaticLayout;->access$100(J)V

    .line 114
    sget-object v0, Landroid/text/StaticLayout$Builder;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 115
    return-void
.end method

.method private setLocale(Ljava/util/Locale;)V
    .locals 6
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 348
    iget-object v0, p0, Landroid/text/StaticLayout$Builder;->mLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    iget-wide v0, p0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Landroid/text/Hyphenator;->get(Ljava/util/Locale;)Landroid/text/Hyphenator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/Hyphenator;->getNativePtr()J

    move-result-wide v4

    # invokes: Landroid/text/StaticLayout;->nSetLocale(JLjava/lang/String;J)V
    invoke-static {v0, v1, v2, v4, v5}, Landroid/text/StaticLayout;->access$300(JLjava/lang/String;J)V

    .line 351
    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mLocale:Ljava/util/Locale;

    .line 353
    :cond_0
    return-void
.end method


# virtual methods
.method addMeasuredRun(II[F)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "widths"    # [F

    .prologue
    .line 361
    iget-wide v0, p0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    # invokes: Landroid/text/StaticLayout;->nAddMeasuredRun(JII[F)V
    invoke-static {v0, v1, p1, p2, p3}, Landroid/text/StaticLayout;->access$500(JII[F)V

    .line 362
    return-void
.end method

.method addReplacementRun(IIF)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "width"    # F

    .prologue
    .line 365
    iget-wide v0, p0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    # invokes: Landroid/text/StaticLayout;->nAddReplacementRun(JIIF)V
    invoke-static {v0, v1, p1, p2, p3}, Landroid/text/StaticLayout;->access$600(JIIF)V

    .line 366
    return-void
.end method

.method addStyleRun(Landroid/text/TextPaint;IIZ)F
    .locals 9
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "isRtl"    # Z

    .prologue
    .line 356
    iget-wide v0, p0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    invoke-virtual {p1}, Landroid/text/TextPaint;->getNativeInstance()J

    move-result-wide v2

    iget-wide v4, p1, Landroid/text/TextPaint;->mNativeTypeface:J

    move v6, p2

    move v7, p3

    move v8, p4

    # invokes: Landroid/text/StaticLayout;->nAddStyleRun(JJJIIZ)F
    invoke-static/range {v0 .. v8}, Landroid/text/StaticLayout;->access$400(JJJIIZ)F

    move-result v0

    return v0
.end method

.method public build()Landroid/text/StaticLayout;
    .locals 2

    .prologue
    .line 378
    new-instance v0, Landroid/text/StaticLayout;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/text/StaticLayout;-><init>(Landroid/text/StaticLayout$Builder;Landroid/text/StaticLayout$1;)V

    .line 379
    .local v0, "result":Landroid/text/StaticLayout;
    invoke-static {p0}, Landroid/text/StaticLayout$Builder;->recycle(Landroid/text/StaticLayout$Builder;)V

    .line 380
    return-object v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 386
    :try_start_0
    iget-wide v0, p0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    # invokes: Landroid/text/StaticLayout;->nFreeBuilder(J)V
    invoke-static {v0, v1}, Landroid/text/StaticLayout;->access$800(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 390
    return-void

    .line 388
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method finish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 119
    iget-wide v0, p0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    # invokes: Landroid/text/StaticLayout;->nFinishBuilder(J)V
    invoke-static {v0, v1}, Landroid/text/StaticLayout;->access$100(J)V

    .line 120
    iput-object v2, p0, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    .line 121
    iput-object v2, p0, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    .line 122
    iput-object v2, p0, Landroid/text/StaticLayout$Builder;->mLeftIndents:[I

    .line 123
    iput-object v2, p0, Landroid/text/StaticLayout$Builder;->mRightIndents:[I

    .line 124
    iget-object v0, p0, Landroid/text/StaticLayout$Builder;->mMeasuredText:Landroid/text/MeasuredText;

    invoke-virtual {v0}, Landroid/text/MeasuredText;->finish()V

    .line 125
    return-void
.end method

.method public setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "alignment"    # Landroid/text/Layout$Alignment;

    .prologue
    .line 186
    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mAlignment:Landroid/text/Layout$Alignment;

    .line 187
    return-object p0
.end method

.method public setBreakStrategy(I)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "breakStrategy"    # I

    .prologue
    .line 286
    iput p1, p0, Landroid/text/StaticLayout$Builder;->mBreakStrategy:I

    .line 287
    return-object p0
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;

    .prologue
    .line 259
    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 260
    return-object p0
.end method

.method public setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "ellipsizedWidth"    # I

    .prologue
    .line 242
    iput p1, p0, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    .line 243
    return-object p0
.end method

.method public setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "hyphenationFrequency"    # I

    .prologue
    .line 299
    iput p1, p0, Landroid/text/StaticLayout$Builder;->mHyphenationFrequency:I

    .line 300
    return-object p0
.end method

.method public setIncludePad(Z)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "includePad"    # Z

    .prologue
    .line 228
    iput-boolean p1, p0, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    .line 229
    return-object p0
.end method

.method public setIndents([I[I)Landroid/text/StaticLayout$Builder;
    .locals 8
    .param p1, "leftIndents"    # [I
    .param p2, "rightIndents"    # [I

    .prologue
    const/4 v6, 0x0

    .line 312
    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mLeftIndents:[I

    .line 313
    iput-object p2, p0, Landroid/text/StaticLayout$Builder;->mRightIndents:[I

    .line 314
    if-nez p1, :cond_0

    move v2, v6

    .line 315
    .local v2, "leftLen":I
    :goto_0
    if-nez p2, :cond_1

    move v4, v6

    .line 316
    .local v4, "rightLen":I
    :goto_1
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    new-array v1, v7, [I

    .line 317
    .local v1, "indents":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v7, v1

    if-ge v0, v7, :cond_4

    .line 318
    if-ge v0, v2, :cond_2

    aget v3, p1, v0

    .line 319
    .local v3, "leftMargin":I
    :goto_3
    if-ge v0, v4, :cond_3

    aget v5, p2, v0

    .line 320
    .local v5, "rightMargin":I
    :goto_4
    add-int v7, v3, v5

    aput v7, v1, v0

    .line 317
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 314
    .end local v0    # "i":I
    .end local v1    # "indents":[I
    .end local v2    # "leftLen":I
    .end local v3    # "leftMargin":I
    .end local v4    # "rightLen":I
    .end local v5    # "rightMargin":I
    :cond_0
    array-length v2, p1

    goto :goto_0

    .line 315
    .restart local v2    # "leftLen":I
    :cond_1
    array-length v4, p2

    goto :goto_1

    .restart local v0    # "i":I
    .restart local v1    # "indents":[I
    .restart local v4    # "rightLen":I
    :cond_2
    move v3, v6

    .line 318
    goto :goto_3

    .restart local v3    # "leftMargin":I
    :cond_3
    move v5, v6

    .line 319
    goto :goto_4

    .line 322
    .end local v3    # "leftMargin":I
    :cond_4
    iget-wide v6, p0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    # invokes: Landroid/text/StaticLayout;->nSetIndents(J[I)V
    invoke-static {v6, v7, v1}, Landroid/text/StaticLayout;->access$200(J[I)V

    .line 323
    return-object p0
.end method

.method public setLineSpacing(FF)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "spacingAdd"    # F
    .param p2, "spacingMult"    # F

    .prologue
    .line 213
    iput p1, p0, Landroid/text/StaticLayout$Builder;->mSpacingAdd:F

    .line 214
    iput p2, p0, Landroid/text/StaticLayout$Builder;->mSpacingMult:F

    .line 215
    return-object p0
.end method

.method public setMaxLines(I)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "maxLines"    # I

    .prologue
    .line 273
    iput p1, p0, Landroid/text/StaticLayout$Builder;->mMaxLines:I

    .line 274
    return-object p0
.end method

.method public setPaint(Landroid/text/TextPaint;)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "paint"    # Landroid/text/TextPaint;

    .prologue
    .line 159
    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    .line 160
    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;)Landroid/text/StaticLayout$Builder;
    .locals 2
    .param p1, "source"    # Ljava/lang/CharSequence;

    .prologue
    .line 128
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/text/StaticLayout$Builder;->setText(Ljava/lang/CharSequence;II)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/CharSequence;II)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 144
    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    .line 145
    iput p2, p0, Landroid/text/StaticLayout$Builder;->mStart:I

    .line 146
    iput p3, p0, Landroid/text/StaticLayout$Builder;->mEnd:I

    .line 147
    return-object p0
.end method

.method public setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "textDir"    # Landroid/text/TextDirectionHeuristic;

    .prologue
    .line 199
    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 200
    return-object p0
.end method

.method public setWidth(I)Landroid/text/StaticLayout$Builder;
    .locals 1
    .param p1, "width"    # I

    .prologue
    .line 172
    iput p1, p0, Landroid/text/StaticLayout$Builder;->mWidth:I

    .line 173
    iget-object v0, p0, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-nez v0, :cond_0

    .line 174
    iput p1, p0, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    .line 176
    :cond_0
    return-object p0
.end method
