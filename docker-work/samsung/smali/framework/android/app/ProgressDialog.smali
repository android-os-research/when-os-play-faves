.class public Landroid/app/ProgressDialog;
.super Landroid/app/AlertDialog;
.source "ProgressDialog.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final blacklist SEM_STYLE_CIRCLE:I = 0x3e8

.field public static final whitelist STYLE_HORIZONTAL:I = 0x1

.field public static final whitelist STYLE_SPINNER:I


# instance fields
.field private greylist-max-o mHasStarted:Z

.field private greylist-max-o mIncrementBy:I

.field private greylist-max-o mIncrementSecondaryBy:I

.field private greylist-max-o mIndeterminate:Z

.field private greylist-max-o mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mMax:I

.field private greylist-max-o mMessage:Ljava/lang/CharSequence;

.field private greylist mMessageView:Landroid/widget/TextView;

.field private greylist-max-p mProgress:Landroid/widget/ProgressBar;

.field private greylist-max-o mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private greylist mProgressNumber:Landroid/widget/TextView;

.field private greylist-max-o mProgressNumberFormat:Ljava/lang/String;

.field private greylist-max-o mProgressPercent:Landroid/widget/TextView;

.field private greylist-max-o mProgressPercentFormat:Ljava/text/NumberFormat;

.field private greylist-max-o mProgressStyle:I

.field private greylist-max-o mProgressVal:I

.field private greylist-max-o mSecondaryProgressVal:I

.field private blacklist mThemeIsDeviceDefault:Z

.field private greylist-max-o mViewUpdateHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmProgress(Landroid/app/ProgressDialog;)Landroid/widget/ProgressBar;
    .registers 1

    iget-object p0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProgressNumber(Landroid/app/ProgressDialog;)Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Landroid/app/ProgressDialog;->mProgressNumber:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProgressNumberFormat(Landroid/app/ProgressDialog;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/app/ProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProgressPercent(Landroid/app/ProgressDialog;)Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Landroid/app/ProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProgressPercentFormat(Landroid/app/ProgressDialog;)Ljava/text/NumberFormat;
    .registers 1

    iget-object p0, p0, Landroid/app/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmThemeIsDeviceDefault(Landroid/app/ProgressDialog;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/app/ProgressDialog;->mThemeIsDeviceDefault:Z

    return p0
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 118
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/ProgressDialog;->mProgressStyle:I

    .line 121
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 122
    .local v1, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x11200b9

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 123
    iget v2, v1, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_1b

    move v0, v4

    :cond_1b
    iput-boolean v0, p0, Landroid/app/ProgressDialog;->mThemeIsDeviceDefault:Z

    .line 126
    invoke-direct {p0}, Landroid/app/ProgressDialog;->initFormats()V

    .line 127
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;I)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .line 138
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/ProgressDialog;->mProgressStyle:I

    .line 141
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 142
    .local v1, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x11200b9

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 143
    iget v2, v1, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_1b

    move v0, v4

    :cond_1b
    iput-boolean v0, p0, Landroid/app/ProgressDialog;->mThemeIsDeviceDefault:Z

    .line 146
    invoke-direct {p0}, Landroid/app/ProgressDialog;->initFormats()V

    .line 147
    return-void
.end method

.method private greylist-max-o initFormats()V
    .registers 3

    .line 151
    iget-boolean v0, p0, Landroid/app/ProgressDialog;->mThemeIsDeviceDefault:Z

    if-eqz v0, :cond_9

    .line 152
    const-string v0, "%1d/%1d"

    iput-object v0, p0, Landroid/app/ProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    goto :goto_d

    .line 154
    :cond_9
    const-string v0, "%1d/%2d"

    iput-object v0, p0, Landroid/app/ProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    .line 157
    :goto_d
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    .line 158
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 159
    return-void
.end method

.method private greylist-max-o onProgressChanged()V
    .registers 3

    .line 609
    iget v0, p0, Landroid/app/ProgressDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 610
    iget-object v0, p0, Landroid/app/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    if-eqz v0, :cond_15

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_15

    .line 611
    iget-object v0, p0, Landroid/app/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 614
    :cond_15
    return-void
.end method

.method public static whitelist show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .line 171
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "indeterminate"    # Z

    .line 186
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "indeterminate"    # Z
    .param p4, "cancelable"    # Z

    .line 203
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "indeterminate"    # Z
    .param p4, "cancelable"    # Z
    .param p5, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .line 223
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 224
    .local v0, "dialog":Landroid/app/ProgressDialog;
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 225
    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 226
    invoke-virtual {v0, p3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 227
    invoke-virtual {v0, p4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 228
    invoke-virtual {v0, p5}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 229
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 230
    return-object v0
.end method


# virtual methods
.method public blacklist getCurrentProgressStyle()I
    .registers 2

    .line 620
    iget v0, p0, Landroid/app/ProgressDialog;->mProgressStyle:I

    return v0
.end method

.method public whitelist getMax()I
    .registers 2

    .line 431
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_9

    .line 432
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    return v0

    .line 434
    :cond_9
    iget v0, p0, Landroid/app/ProgressDialog;->mMax:I

    return v0
.end method

.method public whitelist getProgress()I
    .registers 2

    .line 407
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_9

    .line 408
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    return v0

    .line 410
    :cond_9
    iget v0, p0, Landroid/app/ProgressDialog;->mProgressVal:I

    return v0
.end method

.method public whitelist getSecondaryProgress()I
    .registers 2

    .line 419
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_9

    .line 420
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getSecondaryProgress()I

    move-result v0

    return v0

    .line 422
    :cond_9
    iget v0, p0, Landroid/app/ProgressDialog;->mSecondaryProgressVal:I

    return v0
.end method

.method public whitelist incrementProgressBy(I)V
    .registers 3
    .param p1, "diff"    # I

    .line 456
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_b

    .line 457
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 458
    invoke-direct {p0}, Landroid/app/ProgressDialog;->onProgressChanged()V

    goto :goto_10

    .line 460
    :cond_b
    iget v0, p0, Landroid/app/ProgressDialog;->mIncrementBy:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/app/ProgressDialog;->mIncrementBy:I

    .line 462
    :goto_10
    return-void
.end method

.method public whitelist incrementSecondaryProgressBy(I)V
    .registers 3
    .param p1, "diff"    # I

    .line 471
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_b

    .line 472
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementSecondaryProgressBy(I)V

    .line 473
    invoke-direct {p0}, Landroid/app/ProgressDialog;->onProgressChanged()V

    goto :goto_10

    .line 475
    :cond_b
    iget v0, p0, Landroid/app/ProgressDialog;->mIncrementSecondaryBy:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/app/ProgressDialog;->mIncrementSecondaryBy:I

    .line 477
    :goto_10
    return-void
.end method

.method public whitelist isIndeterminate()Z
    .registers 2

    .line 536
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_9

    .line 537
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    return v0

    .line 539
    :cond_9
    iget-boolean v0, p0, Landroid/app/ProgressDialog;->mIndeterminate:Z

    return v0
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .registers 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 235
    iget-object v0, p0, Landroid/app/ProgressDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 236
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v1, p0, Landroid/app/ProgressDialog;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/R$styleable;->AlertDialog:[I

    const/4 v3, 0x0

    const v4, 0x101005d

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 239
    .local v1, "a":Landroid/content/res/TypedArray;
    iget v2, p0, Landroid/app/ProgressDialog;->mProgressStyle:I

    const/16 v4, 0x3e8

    const/4 v5, 0x1

    const v6, 0x102000b

    const v7, 0x102000d

    if-ne v2, v5, :cond_63

    .line 244
    new-instance v2, Landroid/app/ProgressDialog$1;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog$1;-><init>(Landroid/app/ProgressDialog;)V

    iput-object v2, p0, Landroid/app/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    .line 277
    const/16 v2, 0xd

    const v5, 0x1090038

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 280
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    .line 281
    const v3, 0x10204c2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/app/ProgressDialog;->mProgressNumber:Landroid/widget/TextView;

    .line 282
    const v3, 0x10204c3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/app/ProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    .line 284
    iget-boolean v3, p0, Landroid/app/ProgressDialog;->mThemeIsDeviceDefault:Z

    if-eqz v3, :cond_5e

    .line 285
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/app/ProgressDialog;->mMessageView:Landroid/widget/TextView;

    .line 288
    :cond_5e
    invoke-virtual {p0, v2}, Landroid/app/ProgressDialog;->setView(Landroid/view/View;)V

    .line 290
    .end local v2    # "view":Landroid/view/View;
    goto/16 :goto_d6

    :cond_63
    if-ne v2, v4, :cond_aa

    iget-boolean v2, p0, Landroid/app/ProgressDialog;->mThemeIsDeviceDefault:Z

    if-eqz v2, :cond_aa

    .line 291
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 292
    .local v2, "colorValue":Landroid/util/TypedValue;
    iget-object v8, p0, Landroid/app/ProgressDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    const v9, 0x11200ba

    invoke-virtual {v8, v9, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 294
    invoke-virtual {p0, v3}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 295
    invoke-virtual {p0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    iget v8, v2, Landroid/util/TypedValue;->data:I

    if-nez v8, :cond_89

    .line 296
    const v8, 0x1080b99

    goto :goto_8c

    .line 297
    :cond_89
    const v8, 0x1080b9a

    .line 295
    :goto_8c
    invoke-virtual {v5, v8}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 299
    const v5, 0x10901c5

    invoke-virtual {v0, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 300
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    iput-object v5, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    .line 301
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Landroid/app/ProgressDialog;->mMessageView:Landroid/widget/TextView;

    .line 302
    invoke-virtual {p0, v3}, Landroid/app/ProgressDialog;->setView(Landroid/view/View;)V

    .line 304
    .end local v2    # "colorValue":Landroid/util/TypedValue;
    .end local v3    # "view":Landroid/view/View;
    goto :goto_d6

    .line 307
    :cond_aa
    instance-of v2, p0, Landroid/app/BootProgressDialog;

    if-eqz v2, :cond_b6

    .line 308
    const v2, 0x109004f

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .local v2, "view":Landroid/view/View;
    goto :goto_c3

    .line 311
    .end local v2    # "view":Landroid/view/View;
    :cond_b6
    const/16 v2, 0x12

    const v5, 0x109010d

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 315
    .restart local v2    # "view":Landroid/view/View;
    :goto_c3
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    .line 316
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/app/ProgressDialog;->mMessageView:Landroid/widget/TextView;

    .line 317
    invoke-virtual {p0, v2}, Landroid/app/ProgressDialog;->setView(Landroid/view/View;)V

    .line 319
    .end local v2    # "view":Landroid/view/View;
    :goto_d6
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 320
    iget v2, p0, Landroid/app/ProgressDialog;->mMax:I

    if-lez v2, :cond_e0

    .line 321
    invoke-virtual {p0, v2}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 323
    :cond_e0
    iget v2, p0, Landroid/app/ProgressDialog;->mProgressVal:I

    if-lez v2, :cond_e7

    .line 324
    invoke-virtual {p0, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 326
    :cond_e7
    iget v2, p0, Landroid/app/ProgressDialog;->mSecondaryProgressVal:I

    if-lez v2, :cond_ee

    .line 327
    invoke-virtual {p0, v2}, Landroid/app/ProgressDialog;->setSecondaryProgress(I)V

    .line 329
    :cond_ee
    iget v2, p0, Landroid/app/ProgressDialog;->mIncrementBy:I

    if-lez v2, :cond_f5

    .line 330
    invoke-virtual {p0, v2}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    .line 332
    :cond_f5
    iget v2, p0, Landroid/app/ProgressDialog;->mIncrementSecondaryBy:I

    if-lez v2, :cond_fc

    .line 333
    invoke-virtual {p0, v2}, Landroid/app/ProgressDialog;->incrementSecondaryProgressBy(I)V

    .line 335
    :cond_fc
    iget-object v2, p0, Landroid/app/ProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_103

    .line 336
    invoke-virtual {p0, v2}, Landroid/app/ProgressDialog;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 338
    :cond_103
    iget-object v2, p0, Landroid/app/ProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_10a

    .line 339
    invoke-virtual {p0, v2}, Landroid/app/ProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 341
    :cond_10a
    iget-object v2, p0, Landroid/app/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    if-eqz v2, :cond_111

    .line 342
    invoke-virtual {p0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 344
    :cond_111
    iget-boolean v2, p0, Landroid/app/ProgressDialog;->mIndeterminate:Z

    invoke-virtual {p0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 345
    invoke-direct {p0}, Landroid/app/ProgressDialog;->onProgressChanged()V

    .line 346
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 349
    iget v2, p0, Landroid/app/ProgressDialog;->mProgressStyle:I

    if-ne v2, v4, :cond_142

    .line 350
    invoke-virtual {p0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050535

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 351
    invoke-virtual {p0}, Landroid/app/ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 350
    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setLayout(II)V

    .line 354
    :cond_142
    return-void
.end method

.method public whitelist onStart()V
    .registers 2

    .line 358
    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    .line 359
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ProgressDialog;->mHasStarted:Z

    .line 360
    return-void
.end method

.method protected whitelist onStop()V
    .registers 2

    .line 364
    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    .line 365
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ProgressDialog;->mHasStarted:Z

    .line 366
    return-void
.end method

.method public whitelist setIndeterminate(Z)V
    .registers 3
    .param p1, "indeterminate"    # Z

    .line 523
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_8

    .line 524
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_a

    .line 526
    :cond_8
    iput-boolean p1, p0, Landroid/app/ProgressDialog;->mIndeterminate:Z

    .line 528
    :goto_a
    return-void
.end method

.method public whitelist setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 503
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_8

    .line 504
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_a

    .line 506
    :cond_8
    iput-object p1, p0, Landroid/app/ProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    .line 508
    :goto_a
    return-void
.end method

.method public whitelist setMax(I)V
    .registers 3
    .param p1, "max"    # I

    .line 441
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_b

    .line 442
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 443
    invoke-direct {p0}, Landroid/app/ProgressDialog;->onProgressChanged()V

    goto :goto_d

    .line 445
    :cond_b
    iput p1, p0, Landroid/app/ProgressDialog;->mMax:I

    .line 447
    :goto_d
    return-void
.end method

.method public whitelist setMessage(Ljava/lang/CharSequence;)V
    .registers 8
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 544
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_50

    .line 545
    iget v0, p0, Landroid/app/ProgressDialog;->mProgressStyle:I

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    const-string v4, ""

    if-ne v0, v1, :cond_2b

    .line 547
    iget-boolean v0, p0, Landroid/app/ProgressDialog;->mThemeIsDeviceDefault:Z

    if-eqz v0, :cond_27

    iget-object v0, p0, Landroid/app/ProgressDialog;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_27

    .line 548
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 549
    iget-object v0, p0, Landroid/app/ProgressDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    goto :goto_23

    :cond_22
    move v2, v3

    :goto_23
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_52

    .line 551
    :cond_27
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_52

    .line 553
    :cond_2b
    iget-boolean v1, p0, Landroid/app/ProgressDialog;->mThemeIsDeviceDefault:Z

    if-eqz v1, :cond_48

    iget-object v1, p0, Landroid/app/ProgressDialog;->mMessageView:Landroid/widget/TextView;

    if-eqz v1, :cond_48

    const/16 v5, 0x3e8

    if-ne v0, v5, :cond_48

    .line 554
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 555
    iget-object v0, p0, Landroid/app/ProgressDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    goto :goto_44

    :cond_43
    move v2, v3

    :goto_44
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_52

    .line 557
    :cond_48
    iget-object v0, p0, Landroid/app/ProgressDialog;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_52

    .line 558
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_52

    .line 563
    :cond_50
    iput-object p1, p0, Landroid/app/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    .line 565
    :cond_52
    :goto_52
    return-void
.end method

.method public whitelist setProgress(I)V
    .registers 3
    .param p1, "value"    # I

    .line 376
    iget-boolean v0, p0, Landroid/app/ProgressDialog;->mHasStarted:Z

    if-eqz v0, :cond_d

    .line 377
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 378
    invoke-direct {p0}, Landroid/app/ProgressDialog;->onProgressChanged()V

    goto :goto_f

    .line 380
    :cond_d
    iput p1, p0, Landroid/app/ProgressDialog;->mProgressVal:I

    .line 382
    :goto_f
    return-void
.end method

.method public whitelist setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 487
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_8

    .line 488
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_a

    .line 490
    :cond_8
    iput-object p1, p0, Landroid/app/ProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 492
    :goto_a
    return-void
.end method

.method public whitelist setProgressNumberFormat(Ljava/lang/String;)V
    .registers 2
    .param p1, "format"    # Ljava/lang/String;

    .line 591
    iput-object p1, p0, Landroid/app/ProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    .line 592
    invoke-direct {p0}, Landroid/app/ProgressDialog;->onProgressChanged()V

    .line 593
    return-void
.end method

.method public whitelist setProgressPercentFormat(Ljava/text/NumberFormat;)V
    .registers 2
    .param p1, "format"    # Ljava/text/NumberFormat;

    .line 604
    iput-object p1, p0, Landroid/app/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    .line 605
    invoke-direct {p0}, Landroid/app/ProgressDialog;->onProgressChanged()V

    .line 606
    return-void
.end method

.method public whitelist setProgressStyle(I)V
    .registers 2
    .param p1, "style"    # I

    .line 579
    iput p1, p0, Landroid/app/ProgressDialog;->mProgressStyle:I

    .line 580
    return-void
.end method

.method public whitelist setSecondaryProgress(I)V
    .registers 3
    .param p1, "secondaryProgress"    # I

    .line 393
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_b

    .line 394
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 395
    invoke-direct {p0}, Landroid/app/ProgressDialog;->onProgressChanged()V

    goto :goto_d

    .line 397
    :cond_b
    iput p1, p0, Landroid/app/ProgressDialog;->mSecondaryProgressVal:I

    .line 399
    :goto_d
    return-void
.end method
