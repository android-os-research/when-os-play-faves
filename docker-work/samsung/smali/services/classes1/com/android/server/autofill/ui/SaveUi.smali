.class public final Lcom/android/server/autofill/ui/SaveUi;
.super Ljava/lang/Object;
.source "SaveUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;,
        Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;
    }
.end annotation


# static fields
.field public static final SCROLL_BAR_DEFAULT_DELAY_BEFORE_FADE_MS:I = 0x1f4

.field public static final TAG:Ljava/lang/String; = "SaveUi"

.field public static final THEME_ID_DARK:I = 0x103041b

.field public static final THEME_ID_LIGHT:I = 0x1030428


# instance fields
.field public final mCompatMode:Z

.field public final mComponentName:Landroid/content/ComponentName;

.field public mDestroyed:Z

.field public final mDialog:Landroid/app/Dialog;

.field public final mHandler:Landroid/os/Handler;

.field public final mListener:Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public final mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

.field public final mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

.field public final mServicePackageName:Ljava/lang/String;

.field public final mSubTitle:Ljava/lang/CharSequence;

.field public final mThemeId:I

.field public final mTitle:Ljava/lang/CharSequence;

.field public final mType:I


# direct methods
.method public static synthetic $r8$lambda$5Om1GFL51UkU6R27xZYTvvrJF2I(Lcom/android/server/autofill/ui/SaveUi;Landroid/content/DialogInterface;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/autofill/ui/SaveUi;->lambda$new$3(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$COlMMQIy7HujO95s5IFUXINu4mM(Lcom/android/server/autofill/ui/SaveUi;Landroid/service/autofill/SaveInfo;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/ui/SaveUi;->lambda$new$1(Landroid/service/autofill/SaveInfo;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Den1s5e6_ihM0cgUWtILbUYAU8g(Lcom/android/server/autofill/ui/SaveUi;Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/autofill/ui/SaveUi;->lambda$applyCustomDescription$4(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$fMVND2R8E4zTSmkSsQ1H8EM0SI0(Ljava/util/List;Landroid/view/View;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/autofill/ui/SaveUi;->lambda$applyTextViewStyle$6(Ljava/util/List;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$nPOhPJDX9Df3wvzoSJOLnsZ4RJc(Lcom/android/server/autofill/ui/SaveUi;Landroid/widget/CheckBox;Landroid/service/autofill/SaveInfo;Landroid/view/View;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/autofill/ui/SaveUi;->lambda$new$0(Landroid/widget/CheckBox;Landroid/service/autofill/SaveInfo;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rFqerX7gIMOkRI2CsLNxlO-b3zE(Lcom/android/server/autofill/ui/SaveUi;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/autofill/ui/SaveUi;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sijyueLD9SZQ2ktUMyndUkENbEA(Landroid/service/autofill/InternalOnClickAction;Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/autofill/ui/SaveUi;->lambda$applyCustomDescription$5(Landroid/service/autofill/InternalOnClickAction;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartIntentSenderWithRestore(Lcom/android/server/autofill/ui/SaveUi;Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/ui/SaveUi;->startIntentSenderWithRestore(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/autofill/ui/PendingUi;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/ComponentName;Landroid/service/autofill/SaveInfo;Landroid/service/autofill/ValueFinder;Lcom/android/server/autofill/ui/OverlayControl;Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;ZZZ)V
    .registers 31

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move/from16 v2, p11

    .line 189
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 164
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/autofill/ui/SaveUi;->mHandler:Landroid/os/Handler;

    .line 165
    new-instance v3, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v3}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v3, v0, Lcom/android/server/autofill/ui/SaveUi;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 190
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    const-string v4, "SaveUi"

    if-eqz v3, :cond_31

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "nightMode: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    if-eqz v2, :cond_37

    const v2, 0x103041b

    goto :goto_3a

    :cond_37
    const v2, 0x1030428

    .line 191
    :goto_3a
    iput v2, v0, Lcom/android/server/autofill/ui/SaveUi;->mThemeId:I

    move-object/from16 v3, p2

    .line 192
    iput-object v3, v0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    .line 193
    new-instance v3, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;

    move-object/from16 v5, p10

    invoke-direct {v3, v0, v5}, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;-><init>(Lcom/android/server/autofill/ui/SaveUi;Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;)V

    iput-object v3, v0, Lcom/android/server/autofill/ui/SaveUi;->mListener:Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;

    move-object/from16 v3, p9

    .line 194
    iput-object v3, v0, Lcom/android/server/autofill/ui/SaveUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    move-object/from16 v3, p5

    .line 195
    iput-object v3, v0, Lcom/android/server/autofill/ui/SaveUi;->mServicePackageName:Ljava/lang/String;

    move-object/from16 v3, p6

    .line 196
    iput-object v3, v0, Lcom/android/server/autofill/ui/SaveUi;->mComponentName:Landroid/content/ComponentName;

    move/from16 v3, p13

    .line 197
    iput-boolean v3, v0, Lcom/android/server/autofill/ui/SaveUi;->mCompatMode:Z

    .line 199
    new-instance v3, Lcom/android/server/autofill/ui/SaveUi$1;

    move-object/from16 v5, p1

    invoke-direct {v3, v0, v5, v2}, Lcom/android/server/autofill/ui/SaveUi$1;-><init>(Lcom/android/server/autofill/ui/SaveUi;Landroid/content/Context;I)V

    .line 236
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 241
    invoke-virtual/range {p7 .. p7}, Landroid/service/autofill/SaveInfo;->getNegativeActionStyle()I

    move-result v6

    const/4 v7, 0x0

    const/16 v8, 0x3e7

    const/4 v9, 0x0

    if-ne v6, v8, :cond_a8

    const v6, 0x1090140

    .line 242
    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v6, 0x1020538

    .line 243
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/ButtonBarLayout;

    .line 244
    invoke-virtual {v6, v9}, Lcom/android/internal/widget/ButtonBarLayout;->setAllowStacking(Z)V

    .line 246
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string v10, "CscFeature_Common_ReplaceSecBrandAsGalaxy"

    invoke-virtual {v6, v10, v9}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_af

    const v6, 0x1020213

    .line 248
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_9b

    const/16 v10, 0x8

    .line 250
    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_9b
    const v6, 0x102053a

    .line 253
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_af

    .line 255
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_af

    :cond_a8
    const v6, 0x109004e

    .line 259
    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    :cond_af
    :goto_af
    const v6, 0x1020215

    .line 264
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 266
    new-instance v10, Landroid/util/ArraySet;

    const/4 v11, 0x3

    invoke-direct {v10, v11}, Landroid/util/ArraySet;-><init>(I)V

    .line 267
    invoke-virtual/range {p7 .. p7}, Landroid/service/autofill/SaveInfo;->getType()I

    move-result v12

    iput v12, v0, Lcom/android/server/autofill/ui/SaveUi;->mType:I

    and-int/lit8 v13, v12, 0x1

    if-eqz v13, :cond_d2

    const v13, 0x104022f

    .line 270
    invoke-virtual {v3, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_d2
    and-int/lit8 v13, v12, 0x2

    if-eqz v13, :cond_e0

    const v13, 0x104022a

    .line 273
    invoke-virtual {v3, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_e0
    and-int/lit8 v13, v12, 0x64

    .line 280
    invoke-static {v13}, Ljava/lang/Integer;->bitCount(I)I

    move-result v13

    const/4 v14, 0x1

    if-gt v13, v14, :cond_11b

    and-int/lit16 v13, v12, 0x80

    if-eqz v13, :cond_ee

    goto :goto_11b

    :cond_ee
    and-int/lit8 v13, v12, 0x40

    if-eqz v13, :cond_fd

    const v13, 0x1040230

    .line 284
    invoke-virtual {v3, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_125

    :cond_fd
    and-int/lit8 v13, v12, 0x4

    if-eqz v13, :cond_10c

    const v13, 0x104022b

    .line 286
    invoke-virtual {v3, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_125

    :cond_10c
    and-int/lit8 v13, v12, 0x20

    if-eqz v13, :cond_125

    const v13, 0x104022c

    .line 288
    invoke-virtual {v3, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_125

    :cond_11b
    :goto_11b
    const v13, 0x104022e

    .line 282
    invoke-virtual {v3, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_125
    :goto_125
    and-int/lit8 v13, v12, 0x8

    if-eqz v13, :cond_133

    const v13, 0x1040231

    .line 291
    invoke-virtual {v3, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_133
    const/16 v13, 0x10

    and-int/2addr v12, v13

    if-eqz v12, :cond_142

    const v12, 0x104022d

    .line 294
    invoke-virtual {v3, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 297
    :cond_142
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v12

    const/4 v15, 0x2

    if-eq v12, v14, :cond_1b4

    if-eq v12, v15, :cond_190

    if-eq v12, v11, :cond_165

    if-eqz p12, :cond_153

    const v10, 0x1040237

    goto :goto_156

    :cond_153
    const v10, 0x1040226

    :goto_156
    new-array v11, v14, [Ljava/lang/Object;

    aput-object p3, v11, v9

    .line 319
    invoke-virtual {v3, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 318
    invoke-static {v10, v9}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v10

    iput-object v10, v0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    goto :goto_1d1

    :cond_165
    if-eqz p12, :cond_16b

    const v12, 0x1040239

    goto :goto_16e

    :cond_16b
    const v12, 0x1040228

    :goto_16e
    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/Object;

    .line 314
    invoke-virtual {v10, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v13, v9

    invoke-virtual {v10, v14}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v13, v14

    invoke-virtual {v10, v15}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v13, v15

    aput-object p3, v13, v11

    .line 311
    invoke-virtual {v3, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v10

    iput-object v10, v0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    goto :goto_1d1

    :cond_190
    if-eqz p12, :cond_196

    const v12, 0x1040238

    goto :goto_199

    :cond_196
    const v12, 0x1040227

    :goto_199
    new-array v11, v11, [Ljava/lang/Object;

    .line 308
    invoke-virtual {v10, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v11, v9

    invoke-virtual {v10, v14}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v11, v14

    aput-object p3, v11, v15

    .line 305
    invoke-virtual {v3, v12, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v10

    iput-object v10, v0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    goto :goto_1d1

    :cond_1b4
    if-eqz p12, :cond_1ba

    const v11, 0x104023a

    goto :goto_1bd

    :cond_1ba
    const v11, 0x1040229

    :goto_1bd
    new-array v12, v15, [Ljava/lang/Object;

    .line 302
    invoke-virtual {v10, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v12, v9

    aput-object p3, v12, v14

    .line 299
    invoke-virtual {v3, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v10

    iput-object v10, v0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    .line 323
    :goto_1d1
    iget-object v10, v0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    invoke-virtual/range {p7 .. p7}, Landroid/service/autofill/SaveInfo;->getNegativeActionStyle()I

    move-result v6

    if-eq v6, v8, :cond_1e1

    move-object/from16 v6, p4

    .line 328
    invoke-virtual {v0, v3, v5, v6}, Lcom/android/server/autofill/ui/SaveUi;->setServiceIcon(Landroid/content/Context;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_1e1
    move-object/from16 v6, p8

    .line 333
    invoke-virtual {v0, v3, v5, v6, v1}, Lcom/android/server/autofill/ui/SaveUi;->applyCustomDescription(Landroid/content/Context;Landroid/view/View;Landroid/service/autofill/ValueFinder;Landroid/service/autofill/SaveInfo;)Z

    move-result v6

    if-eqz v6, :cond_1f6

    .line 335
    iput-object v7, v0, Lcom/android/server/autofill/ui/SaveUi;->mSubTitle:Ljava/lang/CharSequence;

    .line 336
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v6, :cond_24c

    const-string/jumbo v6, "on constructor: applied custom description"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24c

    .line 338
    :cond_1f6
    invoke-virtual/range {p7 .. p7}, Landroid/service/autofill/SaveInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/autofill/ui/SaveUi;->mSubTitle:Ljava/lang/CharSequence;

    if-eqz v6, :cond_229

    const/16 v7, 0x46b

    .line 340
    invoke-virtual {v0, v7}, Lcom/android/server/autofill/ui/SaveUi;->writeLog(I)V

    const v7, 0x1020212

    .line 342
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 343
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 344
    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    invoke-virtual {v0, v10}, Lcom/android/server/autofill/ui/SaveUi;->applyMovementMethodIfNeed(Landroid/widget/TextView;)V

    .line 346
    new-instance v11, Landroid/view/ViewGroup$LayoutParams;

    const/4 v12, -0x1

    const/4 v13, -0x2

    invoke-direct {v11, v12, v13}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 349
    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/16 v10, 0x1f4

    .line 350
    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->setScrollBarDefaultDelayBeforeFade(I)V

    .line 353
    :cond_229
    sget-boolean v7, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v7, :cond_24c

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "on constructor: title="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", subTitle="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24c
    :goto_24c
    const v4, 0x1020214

    .line 356
    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 357
    invoke-virtual/range {p7 .. p7}, Landroid/service/autofill/SaveInfo;->getNegativeActionStyle()I

    move-result v6

    .line 362
    invoke-virtual/range {p7 .. p7}, Landroid/service/autofill/SaveInfo;->getNegativeActionStyle()I

    move-result v7

    if-ne v7, v8, :cond_271

    const v6, 0x1020539

    .line 364
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    .line 365
    new-instance v7, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda0;

    invoke-direct {v7, v0, v6, v1}, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/autofill/ui/SaveUi;Landroid/widget/CheckBox;Landroid/service/autofill/SaveInfo;)V

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_291

    :cond_271
    if-eq v6, v14, :cond_283

    if-eq v6, v15, :cond_27c

    const v6, 0x1040224

    .line 383
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_289

    :cond_27c
    const v6, 0x1040223

    .line 379
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_289

    :cond_283
    const v6, 0x1040225

    .line 376
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 385
    :goto_289
    new-instance v6, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda1;

    invoke-direct {v6, v0, v1}, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/autofill/ui/SaveUi;Landroid/service/autofill/SaveInfo;)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_291
    const v6, 0x1020216

    .line 388
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 389
    invoke-virtual/range {p7 .. p7}, Landroid/service/autofill/SaveInfo;->getPositiveActionStyle()I

    move-result v1

    if-ne v1, v14, :cond_2a7

    const v1, 0x10401fd

    .line 390
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2af

    :cond_2a7
    if-eqz p12, :cond_2af

    const v1, 0x104023b

    .line 392
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(I)V

    .line 394
    :cond_2af
    :goto_2af
    new-instance v1, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/autofill/ui/SaveUi;)V

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 398
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v8, 0x11200b9

    invoke-virtual {v7, v8, v1, v14}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 399
    iget v7, v1, Landroid/util/TypedValue;->data:I

    if-eqz v7, :cond_2cc

    move v7, v14

    goto :goto_2cd

    :cond_2cc
    move v7, v9

    :goto_2cd
    if-eqz v7, :cond_307

    .line 402
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "show_button_background"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v14, :cond_2dd

    move v9, v14

    .line 404
    :cond_2dd
    new-instance v7, Landroid/util/TypedValue;

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    .line 405
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    const v10, 0x1010031

    invoke-virtual {v8, v10, v7, v14}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 407
    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    if-lez v1, :cond_301

    .line 408
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v7, v7, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 409
    invoke-virtual {v4, v9, v1}, Landroid/widget/TextView;->semSetButtonShapeEnabled(ZI)V

    .line 410
    invoke-virtual {v6, v9, v1}, Landroid/widget/TextView;->semSetButtonShapeEnabled(ZI)V

    goto :goto_307

    .line 412
    :cond_301
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->semSetButtonShapeEnabled(Z)V

    .line 413
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->semSetButtonShapeEnabled(Z)V

    .line 418
    :cond_307
    :goto_307
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, v3, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, v0, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    .line 419
    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 423
    new-instance v2, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/autofill/ui/SaveUi;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 425
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7f6

    .line 426
    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    const v2, 0x20002

    .line 427
    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    const v2, 0x3f19999a    # 0.6f

    .line 429
    invoke-virtual {v1, v2}, Landroid/view/Window;->setDimAmount(F)V

    const/16 v2, 0x10

    .line 430
    invoke-virtual {v1, v2}, Landroid/view/Window;->addPrivateFlags(I)V

    const/16 v2, 0x20

    .line 431
    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    const/16 v2, 0x51

    .line 432
    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 433
    invoke-virtual {v1, v14}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 434
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const v2, 0x1040221

    .line 440
    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    const v2, 0x1030321

    .line 441
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 443
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/autofill/ui/SaveUi;->show()V

    return-void
.end method

.method public static isValidLink(Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .registers 4

    const/4 v0, 0x0

    const-string v1, "SaveUi"

    if-nez p0, :cond_c

    const-string/jumbo p0, "isValidLink(): custom description without pending intent"

    .line 662
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 665
    :cond_c
    invoke-virtual {p0}, Landroid/app/PendingIntent;->isActivity()Z

    move-result p0

    if-nez p0, :cond_19

    const-string/jumbo p0, "isValidLink(): pending intent not for activity"

    .line 666
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_19
    if-nez p1, :cond_22

    const-string/jumbo p0, "isValidLink(): no intent"

    .line 670
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_22
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$applyCustomDescription$4(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .registers 4

    .line 474
    invoke-virtual {p3, p1}, Landroid/widget/RemoteViews$RemoteResponse;->getLaunchOptions(Landroid/view/View;)Landroid/util/Pair;

    move-result-object p1

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    .line 475
    invoke-static {p2, p1}, Lcom/android/server/autofill/ui/SaveUi;->isValidLink(Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    move-result p3

    if-nez p3, :cond_20

    const/16 p1, 0x46c

    .line 477
    iget p2, p0, Lcom/android/server/autofill/ui/SaveUi;->mType:I

    .line 478
    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/ui/SaveUi;->newLogMaker(II)Landroid/metrics/LogMaker;

    move-result-object p1

    const/4 p2, 0x0

    .line 479
    invoke-virtual {p1, p2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 480
    iget-object p0, p0, Lcom/android/server/autofill/ui/SaveUi;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {p0, p1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    return p2

    .line 484
    :cond_20
    invoke-virtual {p0, p2, p1}, Lcom/android/server/autofill/ui/SaveUi;->startIntentSenderWithRestore(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic lambda$applyCustomDescription$5(Landroid/service/autofill/InternalOnClickAction;Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 5

    .line 556
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_27

    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Applying "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " after "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " was clicked"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SaveUi"

    invoke-static {v0, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :cond_27
    invoke-virtual {p0, p1}, Landroid/service/autofill/InternalOnClickAction;->onClick(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public static synthetic lambda$applyTextViewStyle$6(Ljava/util/List;Landroid/view/View;)Z
    .registers 3

    .line 606
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 608
    check-cast p1, Landroid/widget/TextView;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$new$0(Landroid/widget/CheckBox;Landroid/service/autofill/SaveInfo;Landroid/view/View;)V
    .registers 4

    .line 366
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 367
    iget-object p0, p0, Lcom/android/server/autofill/ui/SaveUi;->mListener:Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;

    invoke-virtual {p2}, Landroid/service/autofill/SaveInfo;->semGetNegativeSecondActionListener()Landroid/content/IntentSender;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->onCancel(Landroid/content/IntentSender;)V

    goto :goto_19

    .line 369
    :cond_10
    iget-object p0, p0, Lcom/android/server/autofill/ui/SaveUi;->mListener:Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;

    invoke-virtual {p2}, Landroid/service/autofill/SaveInfo;->getNegativeActionListener()Landroid/content/IntentSender;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->onCancel(Landroid/content/IntentSender;)V

    :goto_19
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/service/autofill/SaveInfo;Landroid/view/View;)V
    .registers 3

    .line 385
    iget-object p0, p0, Lcom/android/server/autofill/ui/SaveUi;->mListener:Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;

    invoke-virtual {p1}, Landroid/service/autofill/SaveInfo;->getNegativeActionListener()Landroid/content/IntentSender;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->onCancel(Landroid/content/IntentSender;)V

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .registers 2

    .line 394
    iget-object p0, p0, Lcom/android/server/autofill/ui/SaveUi;->mListener:Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;

    invoke-virtual {p0}, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->onSave()V

    return-void
.end method

.method private synthetic lambda$new$3(Landroid/content/DialogInterface;)V
    .registers 2

    .line 423
    iget-object p0, p0, Lcom/android/server/autofill/ui/SaveUi;->mListener:Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->onCancel(Landroid/content/IntentSender;)V

    return-void
.end method


# virtual methods
.method public final applyCustomDescription(Landroid/content/Context;Landroid/view/View;Landroid/service/autofill/ValueFinder;Landroid/service/autofill/SaveInfo;)Z
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 448
    invoke-virtual/range {p4 .. p4}, Landroid/service/autofill/SaveInfo;->getCustomDescription()Landroid/service/autofill/CustomDescription;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_e

    return v4

    :cond_e
    const/16 v5, 0x469

    .line 452
    invoke-virtual {v0, v5}, Lcom/android/server/autofill/ui/SaveUi;->writeLog(I)V

    .line 453
    invoke-virtual {v3}, Landroid/service/autofill/CustomDescription;->getPresentation()Landroid/widget/RemoteViews;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/autofill/Helper;->sanitizeRemoteView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v5

    const-string v6, "SaveUi"

    if-nez v5, :cond_25

    const-string v0, "No remote view on custom description"

    .line 455
    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 461
    :cond_25
    invoke-virtual {v3}, Landroid/service/autofill/CustomDescription;->getTransformations()Ljava/util/ArrayList;

    move-result-object v7

    .line 462
    sget-boolean v8, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v8, :cond_41

    .line 463
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "applyCustomDescription(): transformations = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    if-eqz v7, :cond_4f

    .line 466
    invoke-static {v2, v5, v7}, Landroid/service/autofill/InternalTransformation;->batchApply(Landroid/service/autofill/ValueFinder;Landroid/widget/RemoteViews;Ljava/util/ArrayList;)Z

    move-result v7

    if-nez v7, :cond_4f

    const-string v0, "could not apply main transformations on custom description"

    .line 467
    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 472
    :cond_4f
    new-instance v7, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda5;

    invoke-direct {v7, v0}, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/autofill/ui/SaveUi;)V

    const/4 v8, 0x0

    .line 490
    :try_start_55
    iget v9, v0, Lcom/android/server/autofill/ui/SaveUi;->mThemeId:I

    invoke-virtual {v5, v1, v8, v7, v9}, Landroid/widget/RemoteViews;->applyWithTheme(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;I)Landroid/view/View;

    move-result-object v7

    .line 495
    invoke-virtual {v3}, Landroid/service/autofill/CustomDescription;->getUpdates()Ljava/util/ArrayList;

    move-result-object v8

    .line 496
    sget-boolean v9, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v9, :cond_7f

    .line 497
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "applyCustomDescription(): view = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " updates="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_7f} :catch_1e3

    :cond_7f
    const-string v9, "custom description has "

    if-eqz v8, :cond_144

    .line 501
    :try_start_83
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 502
    sget-boolean v11, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v11, :cond_a2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " batch updates"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a2
    move v11, v4

    :goto_a3
    if-ge v11, v10, :cond_144

    .line 504
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Pair;

    .line 505
    iget-object v13, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Landroid/service/autofill/InternalValidator;

    if-eqz v13, :cond_128

    .line 506
    invoke-virtual {v13, v2}, Landroid/service/autofill/InternalValidator;->isValid(Landroid/service/autofill/ValueFinder;)Z

    move-result v13

    if-nez v13, :cond_b8

    goto :goto_128

    .line 510
    :cond_b8
    iget-object v12, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Landroid/service/autofill/BatchUpdates;

    .line 512
    invoke-virtual {v12}, Landroid/service/autofill/BatchUpdates;->getUpdates()Landroid/widget/RemoteViews;

    move-result-object v13

    if-eqz v13, :cond_dd

    .line 514
    sget-boolean v14, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v14, :cond_da

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Applying template updates for batch update #"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_da
    invoke-virtual {v13, v1, v7}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    .line 519
    :cond_dd
    invoke-virtual {v12}, Landroid/service/autofill/BatchUpdates;->getTransformations()Ljava/util/ArrayList;

    move-result-object v12

    if-eqz v12, :cond_140

    .line 521
    sget-boolean v13, Lcom/android/server/autofill/Helper;->sDebug:Z
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_e5} :catch_1e3

    const-string v14, ": "

    if-eqz v13, :cond_103

    .line 522
    :try_start_e9
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Applying child transformation for batch update #"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_103
    invoke-static {v2, v5, v12}, Landroid/service/autofill/InternalTransformation;->batchApply(Landroid/service/autofill/ValueFinder;Landroid/widget/RemoteViews;Ljava/util/ArrayList;)Z

    move-result v13

    if-nez v13, :cond_124

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not apply child transformation for batch update #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 531
    :cond_124
    invoke-virtual {v5, v1, v7}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_140

    .line 507
    :cond_128
    :goto_128
    sget-boolean v12, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v12, :cond_140

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Skipping batch update #"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_140
    :goto_140
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_a3

    .line 537
    :cond_144
    invoke-virtual {v3}, Landroid/service/autofill/CustomDescription;->getActions()Landroid/util/SparseArray;

    move-result-object v1

    if-eqz v1, :cond_1c8

    .line 539
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 540
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_169

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " actions"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_169
    instance-of v3, v7, Landroid/view/ViewGroup;

    if-nez v3, :cond_182

    .line 542
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot apply actions because custom description root is not a ViewGroup: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c8

    .line 545
    :cond_182
    move-object v3, v7

    check-cast v3, Landroid/view/ViewGroup;

    move v5, v4

    :goto_186
    if-ge v5, v2, :cond_1c8

    .line 547
    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 548
    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/service/autofill/InternalOnClickAction;

    .line 549
    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    if-nez v10, :cond_1bd

    .line 551
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Ignoring action "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " for view "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " because it\'s not on "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c5

    .line 555
    :cond_1bd
    new-instance v8, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda6;

    invoke-direct {v8, v9, v3}, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda6;-><init>(Landroid/service/autofill/InternalOnClickAction;Landroid/view/ViewGroup;)V

    invoke-virtual {v10, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1c5
    add-int/lit8 v5, v5, 0x1

    goto :goto_186

    .line 565
    :cond_1c8
    :goto_1c8
    invoke-virtual {v0, v7}, Lcom/android/server/autofill/ui/SaveUi;->applyTextViewStyle(Landroid/view/View;)V

    const v0, 0x1020212

    move-object/from16 v1, p2

    .line 569
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 570
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 571
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/16 v1, 0x1f4

    .line 572
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setScrollBarDefaultDelayBeforeFade(I)V
    :try_end_1e1
    .catch Ljava/lang/Exception; {:try_start_e9 .. :try_end_1e1} :catch_1e3

    const/4 v0, 0x1

    return v0

    :catch_1e3
    move-exception v0

    const-string v1, "Error applying custom description. "

    .line 577
    invoke-static {v6, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v4
.end method

.method public final applyMovementMethodIfNeed(Landroid/widget/TextView;)V
    .registers 5

    .line 622
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    .line 623
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 627
    :cond_b
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    .line 628
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const-class v2, Landroid/text/style/ClickableSpan;

    invoke-virtual {v0, p0, v1, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/text/style/ClickableSpan;

    .line 629
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_24

    return-void

    .line 633
    :cond_24
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method public final applyTextViewStyle(Landroid/view/View;)V
    .registers 5

    .line 604
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 605
    new-instance v1, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda4;-><init>(Ljava/util/List;)V

    .line 614
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    .line 615
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x0

    :goto_12
    if-ge v1, p1, :cond_20

    .line 617
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/android/server/autofill/ui/SaveUi;->applyMovementMethodIfNeed(Landroid/widget/TextView;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_20
    return-void
.end method

.method public destroy()V
    .registers 3

    .line 747
    :try_start_0
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_b

    const-string v0, "SaveUi"

    const-string v1, "destroy()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/SaveUi;->throwIfDestroyed()V

    .line 749
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mListener:Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->onDestroy()V

    .line 750
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/autofill/ui/SaveUi;->mListener:Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 751
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x1

    .line 752
    iput-boolean v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mDestroyed:Z
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_28

    .line 754
    iget-object p0, p0, Lcom/android/server/autofill/ui/SaveUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    invoke-virtual {p0}, Lcom/android/server/autofill/ui/OverlayControl;->showOverlays()V

    return-void

    :catchall_28
    move-exception v0

    iget-object p0, p0, Lcom/android/server/autofill/ui/SaveUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    invoke-virtual {p0}, Lcom/android/server/autofill/ui/OverlayControl;->showOverlays()V

    .line 755
    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 10

    .line 770
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "title: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 771
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "subtitle: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mSubTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 772
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "pendingUi: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 773
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "service: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mServicePackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 774
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "app: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 775
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "compat mode: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mCompatMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 776
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "theme id: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mThemeId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 777
    iget v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mThemeId:I

    const v1, 0x103041b

    if-eq v0, v1, :cond_7c

    const v1, 0x1030428

    if-eq v0, v1, :cond_76

    const-string v0, "(UNKNOWN_MODE)"

    .line 785
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_81

    :cond_76
    const-string v0, " (light)"

    .line 782
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_81

    :cond_7c
    const-string v0, " (dark)"

    .line 779
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 788
    :goto_81
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 789
    invoke-virtual {v0}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v1

    .line 790
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "coordinates: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v2, 0x28

    .line 791
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(C)V

    const/4 v3, 0x0

    aget v4, v1, v3

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    const/16 v4, 0x2c

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    const/4 v5, 0x1

    aget v6, v1, v5

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    const/16 v6, 0x29

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 792
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 793
    aget v2, v1, v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 794
    aget v1, v1, v5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(C)V

    .line 795
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "destroyed: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/server/autofill/ui/SaveUi;->mDestroyed:Z

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public hide()Lcom/android/server/autofill/ui/PendingUi;
    .registers 3

    .line 732
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_b

    const-string v0, "SaveUi"

    const-string v1, "Hiding save dialog."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_18

    .line 736
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/OverlayControl;->showOverlays()V

    .line 738
    iget-object p0, p0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    return-object p0

    :catchall_18
    move-exception v0

    .line 736
    iget-object p0, p0, Lcom/android/server/autofill/ui/SaveUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    invoke-virtual {p0}, Lcom/android/server/autofill/ui/OverlayControl;->showOverlays()V

    .line 737
    throw v0
.end method

.method public isShowing()Z
    .registers 1

    .line 742
    iget-object p0, p0, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    return p0
.end method

.method public final newLogMaker(I)Landroid/metrics/LogMaker;
    .registers 5

    .line 681
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mComponentName:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/server/autofill/ui/SaveUi;->mServicePackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    iget v2, v2, Lcom/android/server/autofill/ui/PendingUi;->sessionId:I

    iget-boolean p0, p0, Lcom/android/server/autofill/ui/SaveUi;->mCompatMode:Z

    invoke-static {p1, v0, v1, v2, p0}, Lcom/android/server/autofill/Helper;->newLogMaker(ILandroid/content/ComponentName;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;

    move-result-object p0

    return-object p0
.end method

.method public final newLogMaker(II)Landroid/metrics/LogMaker;
    .registers 3

    .line 677
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/ui/SaveUi;->newLogMaker(I)Landroid/metrics/LogMaker;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p2, 0x46a

    invoke-virtual {p0, p2, p1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p0

    return-object p0
.end method

.method public onPendingUi(ILandroid/os/IBinder;)V
    .registers 7

    .line 697
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    invoke-virtual {v0, p2}, Lcom/android/server/autofill/ui/PendingUi;->matches(Landroid/os/IBinder;)Z

    move-result v0

    const-string v1, "SaveUi"

    if-nez v0, :cond_36

    .line 698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restore("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "): got token "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " instead of "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    .line 699
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/PendingUi;->getToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 698
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_36
    const/16 v0, 0x46e

    .line 702
    invoke-virtual {p0, v0}, Lcom/android/server/autofill/ui/SaveUi;->newLogMaker(I)Landroid/metrics/LogMaker;

    move-result-object v0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_7c

    const/4 v3, 0x2

    if-eq p1, v3, :cond_5d

    const/16 p2, 0xb

    .line 716
    :try_start_44
    invoke-virtual {v0, p2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 717
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restore(): invalid operation "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9b

    .line 706
    :cond_5d
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p1, :cond_75

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Restoring save dialog for "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    :cond_75
    invoke-virtual {v0, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 708
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/SaveUi;->show()V

    goto :goto_9b

    :cond_7c
    const/4 p1, 0x5

    .line 711
    invoke-virtual {v0, p1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 712
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p1, :cond_98

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cancelling pending save dialog for "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    :cond_98
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/SaveUi;->hide()Lcom/android/server/autofill/ui/PendingUi;
    :try_end_9b
    .catchall {:try_start_44 .. :try_end_9b} :catchall_a7

    .line 720
    :goto_9b
    iget-object p1, p0, Lcom/android/server/autofill/ui/SaveUi;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {p1, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 722
    iget-object p0, p0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/ui/PendingUi;->setState(I)V

    return-void

    :catchall_a7
    move-exception p1

    .line 720
    iget-object p0, p0, Lcom/android/server/autofill/ui/SaveUi;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 721
    throw p1
.end method

.method public final setServiceIcon(Landroid/content/Context;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .registers 10

    const p0, 0x1020213

    .line 637
    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    .line 638
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x105003d

    .line 640
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 642
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result p2

    .line 643
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    const-string v1, ")."

    const-string v2, "SaveUi"

    const-string/jumbo v3, "x"

    if-gt p2, p1, :cond_5a

    if-gt v0, p1, :cond_5a

    .line 646
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v4, :cond_56

    .line 647
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding service icon ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") as it\'s less than maximum ("

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :cond_56
    invoke-virtual {p0, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_8e

    .line 653
    :cond_5a
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not adding service icon of size ("

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") because maximum is ("

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    invoke-virtual {p0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_8e
    return-void
.end method

.method public final show()V
    .registers 3

    .line 726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Showing save dialog: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SaveUi"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 728
    iget-object p0, p0, Lcom/android/server/autofill/ui/SaveUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    invoke-virtual {p0}, Lcom/android/server/autofill/ui/OverlayControl;->hideOverlays()V

    return-void
.end method

.method public final startIntentSenderWithRestore(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .registers 6

    .line 584
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    const-string v1, "SaveUi"

    if-eqz v0, :cond_b

    const-string v0, "Intercepting custom description intent"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :cond_b
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/PendingUi;->getToken()Landroid/os/IBinder;

    move-result-object v0

    const-string v2, "android.view.autofill.extra.RESTORE_SESSION_TOKEN"

    .line 590
    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 592
    iget-object v2, p0, Lcom/android/server/autofill/ui/SaveUi;->mListener:Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p1

    invoke-virtual {v2, p1, p2}, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V

    .line 593
    iget-object p1, p0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/android/server/autofill/ui/PendingUi;->setState(I)V

    .line 595
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p1, :cond_3e

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "hiding UI until restored with token "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_3e
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/SaveUi;->hide()Lcom/android/server/autofill/ui/PendingUi;

    const/16 p1, 0x46c

    .line 598
    iget p2, p0, Lcom/android/server/autofill/ui/SaveUi;->mType:I

    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/ui/SaveUi;->newLogMaker(II)Landroid/metrics/LogMaker;

    move-result-object p1

    const/4 p2, 0x1

    .line 599
    invoke-virtual {p1, p2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 600
    iget-object p0, p0, Lcom/android/server/autofill/ui/SaveUi;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {p0, p1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    return-void
.end method

.method public final throwIfDestroyed()V
    .registers 2

    .line 759
    iget-boolean p0, p0, Lcom/android/server/autofill/ui/SaveUi;->mDestroyed:Z

    if-nez p0, :cond_5

    return-void

    .line 760
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "cannot interact with a destroyed instance"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 766
    iget-object p0, p0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    if-nez p0, :cond_7

    const-string p0, "NO TITLE"

    goto :goto_b

    :cond_7
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_b
    return-object p0
.end method

.method public final writeLog(I)V
    .registers 4

    .line 686
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget v1, p0, Lcom/android/server/autofill/ui/SaveUi;->mType:I

    invoke-virtual {p0, p1, v1}, Lcom/android/server/autofill/ui/SaveUi;->newLogMaker(II)Landroid/metrics/LogMaker;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    return-void
.end method
