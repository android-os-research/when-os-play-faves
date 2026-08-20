.class public final Lcom/android/server/autofill/ui/DialogFillUi;
.super Ljava/lang/Object;
.source "DialogFillUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;,
        Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;,
        Lcom/android/server/autofill/ui/DialogFillUi$AnnounceFilterResult;,
        Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "DialogFillUi"

.field public static final THEME_ID_DARK:I = 0x103041b

.field public static final THEME_ID_LIGHT:I = 0x1030428


# instance fields
.field public final mAdapter:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

.field public mAnnounceFilterResult:Lcom/android/server/autofill/ui/DialogFillUi$AnnounceFilterResult;

.field public final mCallback:Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;

.field public final mComponentName:Landroid/content/ComponentName;

.field public final mContext:Landroid/content/Context;

.field public mDestroyed:Z

.field public final mDialog:Landroid/app/Dialog;

.field public mFilterText:Ljava/lang/String;

.field public final mListView:Landroid/widget/ListView;

.field public final mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

.field public final mServicePackageName:Ljava/lang/String;

.field public final mThemeId:I

.field public final mVisibleDatasetsMaxCount:I


# direct methods
.method public static synthetic $r8$lambda$FHcvEh2EiLoIxQY7TtcEVwqFWjQ(Lcom/android/server/autofill/ui/DialogFillUi;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/autofill/ui/DialogFillUi;->lambda$setDismissButton$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RBHPtmugoZ4NQ_QCA1T-ZUsgGQI(Lcom/android/server/autofill/ui/DialogFillUi;Landroid/service/autofill/FillResponse;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/ui/DialogFillUi;->lambda$initialAuthenticationLayout$4(Landroid/service/autofill/FillResponse;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fGAZg0NneiNHUsb1eFW1bncm6Pc(Lcom/android/server/autofill/ui/DialogFillUi;Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/autofill/ui/DialogFillUi;->lambda$createDatasetItems$6(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$kL3Y2XGjBYNQG0nZhDxVkQXQGv8(Lcom/android/server/autofill/ui/DialogFillUi;Landroid/content/DialogInterface;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/autofill/ui/DialogFillUi;->lambda$new$0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nIM6O_LnnPUYdDY1JxmjwZHLJbs(Lcom/android/server/autofill/ui/DialogFillUi;Landroid/service/autofill/FillResponse;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/ui/DialogFillUi;->lambda$initialAuthenticationLayout$5(Landroid/service/autofill/FillResponse;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qRuNs4m9lMA-HvgPaTI-kJdScdI(Lcom/android/server/autofill/ui/DialogFillUi;Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/autofill/ui/DialogFillUi;->lambda$setHeader$1(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$rlQ1LBjwhkz8NjpV6lw6tMlKOcE(Lcom/android/server/autofill/ui/DialogFillUi;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/autofill/ui/DialogFillUi;->lambda$initialDatasetLayout$7(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$ujCZmdrlEBoKLmL2DB8QvdPcUHU(Lcom/android/server/autofill/ui/DialogFillUi;Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/autofill/ui/DialogFillUi;->lambda$initialAuthenticationLayout$3(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$xmMEYdgmJJ_ePCu123bBQQeEVJg(Landroid/widget/AdapterView$OnItemClickListener;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/autofill/ui/DialogFillUi;->lambda$initialDatasetLayout$8(Landroid/widget/AdapterView$OnItemClickListener;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zwqLwcyFqya2DBJ4s4_qcUkSLSc(Lcom/android/server/autofill/ui/DialogFillUi;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/ui/DialogFillUi;->lambda$initialDatasetLayout$9(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/autofill/ui/DialogFillUi;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmListView(Lcom/android/server/autofill/ui/DialogFillUi;)Landroid/widget/ListView;
    .registers 1

    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mListView:Landroid/widget/ListView;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mannounceSearchResultIfNeeded(Lcom/android/server/autofill/ui/DialogFillUi;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/autofill/ui/DialogFillUi;->announceSearchResultIfNeeded()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/ComponentName;Lcom/android/server/autofill/ui/OverlayControl;ZLcom/android/server/autofill/ui/DialogFillUi$UiCallback;)V
    .registers 14

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    const-string v1, "DialogFillUi"

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "nightMode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    if-eqz p9, :cond_24

    const p9, 0x103041b

    goto :goto_27

    :cond_24
    const p9, 0x1030428

    .line 111
    :goto_27
    iput p9, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mThemeId:I

    .line 112
    iput-object p10, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mCallback:Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;

    .line 113
    iput-object p8, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    .line 114
    iput-object p6, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mServicePackageName:Ljava/lang/String;

    .line 115
    iput-object p7, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mComponentName:Landroid/content/ComponentName;

    .line 117
    new-instance p6, Landroid/view/ContextThemeWrapper;

    invoke-direct {p6, p1, p9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object p6, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mContext:Landroid/content/Context;

    .line 118
    invoke-static {p6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p7, 0x109004d

    const/4 p8, 0x0

    .line 119
    invoke-virtual {p1, p7, p8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 121
    invoke-virtual {p0, p1, p5}, Lcom/android/server/autofill/ui/DialogFillUi;->setServiceIcon(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 122
    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/ui/DialogFillUi;->setHeader(Landroid/view/View;Landroid/service/autofill/FillResponse;)V

    .line 124
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/DialogFillUi;->getVisibleDatasetsMaxCount()I

    move-result p5

    iput p5, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mVisibleDatasetsMaxCount:I

    .line 126
    invoke-virtual {p2}, Landroid/service/autofill/FillResponse;->getAuthentication()Landroid/content/IntentSender;

    move-result-object p5

    if-eqz p5, :cond_6a

    .line 127
    iput-object p8, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mListView:Landroid/widget/ListView;

    .line 128
    iput-object p8, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mAdapter:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

    .line 130
    :try_start_5a
    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/ui/DialogFillUi;->initialAuthenticationLayout(Landroid/view/View;Landroid/service/autofill/FillResponse;)V
    :try_end_5d
    .catch Ljava/lang/RuntimeException; {:try_start_5a .. :try_end_5d} :catch_5e

    goto :goto_83

    :catch_5e
    move-exception p1

    .line 132
    invoke-interface {p10}, Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;->onCanceled()V

    const-string p2, "Error inflating remote views"

    .line 133
    invoke-static {v1, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    iput-object p8, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mDialog:Landroid/app/Dialog;

    return-void

    .line 138
    :cond_6a
    invoke-virtual {p0, p2, p3}, Lcom/android/server/autofill/ui/DialogFillUi;->createDatasetItems(Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;)Ljava/util/ArrayList;

    move-result-object p2

    .line 139
    new-instance p3, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

    invoke-direct {p3, p0, p2}, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;-><init>(Lcom/android/server/autofill/ui/DialogFillUi;Ljava/util/List;)V

    iput-object p3, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mAdapter:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

    const p2, 0x102020d

    .line 140
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mListView:Landroid/widget/ListView;

    .line 141
    invoke-virtual {p0, p1, p4}, Lcom/android/server/autofill/ui/DialogFillUi;->initialDatasetLayout(Landroid/view/View;Ljava/lang/String;)V

    .line 144
    :goto_83
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/ui/DialogFillUi;->setDismissButton(Landroid/view/View;)V

    .line 146
    new-instance p2, Landroid/app/Dialog;

    invoke-direct {p2, p6, p9}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mDialog:Landroid/app/Dialog;

    .line 147
    invoke-virtual {p2, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 148
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/DialogFillUi;->setDialogParamsAsBottomSheet()V

    .line 149
    new-instance p1, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/autofill/ui/DialogFillUi;)V

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 151
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/DialogFillUi;->show()V

    return-void
.end method

.method private synthetic lambda$createDatasetItems$6(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .registers 4

    if-eqz p2, :cond_b

    .line 274
    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mCallback:Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;

    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;->startIntentSender(Landroid/content/IntentSender;)V

    :cond_b
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$initialAuthenticationLayout$3(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .registers 4

    if-eqz p2, :cond_b

    .line 250
    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mCallback:Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;

    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;->startIntentSender(Landroid/content/IntentSender;)V

    :cond_b
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$initialAuthenticationLayout$4(Landroid/service/autofill/FillResponse;Landroid/view/View;)V
    .registers 3

    .line 259
    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mCallback:Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;

    invoke-interface {p0, p1}, Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;->onResponsePicked(Landroid/service/autofill/FillResponse;)V

    return-void
.end method

.method private synthetic lambda$initialAuthenticationLayout$5(Landroid/service/autofill/FillResponse;Landroid/view/View;)V
    .registers 3

    .line 261
    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mCallback:Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;

    invoke-interface {p0, p1}, Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;->onResponsePicked(Landroid/service/autofill/FillResponse;)V

    return-void
.end method

.method private synthetic lambda$initialDatasetLayout$7(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    .line 333
    iget-object p1, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mAdapter:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

    invoke-virtual {p1, p3}, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->getItem(I)Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;

    move-result-object p1

    .line 334
    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mCallback:Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;

    iget-object p1, p1, Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;->dataset:Landroid/service/autofill/Dataset;

    invoke-interface {p0, p1}, Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;->onDatasetPicked(Landroid/service/autofill/Dataset;)V

    return-void
.end method

.method public static synthetic lambda$initialDatasetLayout$8(Landroid/widget/AdapterView$OnItemClickListener;Landroid/view/View;)V
    .registers 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    .line 344
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method private synthetic lambda$initialDatasetLayout$9(II)V
    .registers 5

    .line 355
    iget-boolean v0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mDestroyed:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    if-gtz p2, :cond_36

    .line 359
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p1, :cond_30

    .line 360
    iget-object p1, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mFilterText:Ljava/lang/String;

    if-nez p1, :cond_11

    goto :goto_15

    :cond_11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 361
    :goto_15
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No dataset matches filter with "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " chars"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DialogFillUi"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_30
    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mCallback:Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;

    invoke-interface {p0}, Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;->onCanceled()V

    goto :goto_5e

    .line 366
    :cond_36
    iget-object p2, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mAdapter:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

    invoke-virtual {p2}, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->getCount()I

    move-result p2

    iget v1, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mVisibleDatasetsMaxCount:I

    if-le p2, v1, :cond_4c

    .line 367
    iget-object p2, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mListView:Landroid/widget/ListView;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 368
    iget-object p2, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->onVisibilityAggregated(Z)V

    goto :goto_51

    .line 370
    :cond_4c
    iget-object p2, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 372
    :goto_51
    iget-object p2, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mAdapter:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

    invoke-virtual {p2}, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->getCount()I

    move-result p2

    if-eq p2, p1, :cond_5e

    .line 373
    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    :cond_5e
    :goto_5e
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/content/DialogInterface;)V
    .registers 2

    .line 149
    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mCallback:Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;

    invoke-interface {p0}, Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;->onCanceled()V

    return-void
.end method

.method private synthetic lambda$setDismissButton$2(Landroid/view/View;)V
    .registers 2

    .line 225
    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mCallback:Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;

    invoke-interface {p0}, Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;->onDismissed()V

    return-void
.end method

.method private synthetic lambda$setHeader$1(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .registers 4

    if-eqz p2, :cond_b

    .line 210
    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mCallback:Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;

    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;->startIntentSender(Landroid/content/IntentSender;)V

    :cond_b
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final announceSearchResultIfNeeded()V
    .registers 3

    .line 449
    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 450
    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mAnnounceFilterResult:Lcom/android/server/autofill/ui/DialogFillUi$AnnounceFilterResult;

    if-nez v0, :cond_18

    .line 451
    new-instance v0, Lcom/android/server/autofill/ui/DialogFillUi$AnnounceFilterResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/autofill/ui/DialogFillUi$AnnounceFilterResult;-><init>(Lcom/android/server/autofill/ui/DialogFillUi;Lcom/android/server/autofill/ui/DialogFillUi$AnnounceFilterResult-IA;)V

    iput-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mAnnounceFilterResult:Lcom/android/server/autofill/ui/DialogFillUi$AnnounceFilterResult;

    .line 453
    :cond_18
    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mAnnounceFilterResult:Lcom/android/server/autofill/ui/DialogFillUi$AnnounceFilterResult;

    invoke-virtual {p0}, Lcom/android/server/autofill/ui/DialogFillUi$AnnounceFilterResult;->post()V

    :cond_1d
    return-void
.end method

.method public final createDatasetItems(Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;)Ljava/util/ArrayList;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/autofill/FillResponse;",
            "Landroid/view/autofill/AutofillId;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;",
            ">;"
        }
    .end annotation

    .line 266
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 267
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    const-string v2, "DialogFillUi"

    if-eqz v1, :cond_2c

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number datasets: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " max visible: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mVisibleDatasetsMaxCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_2c
    new-instance v1, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/autofill/ui/DialogFillUi;)V

    .line 279
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    move v5, v4

    :goto_38
    if-ge v5, v0, :cond_105

    .line 281
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Landroid/service/autofill/Dataset;

    .line 282
    invoke-virtual {v8}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-ltz v6, :cond_101

    .line 285
    invoke-virtual {v8, v6}, Landroid/service/autofill/Dataset;->getFieldDialogPresentation(I)Landroid/widget/RemoteViews;

    move-result-object v7

    .line 284
    invoke-static {v7}, Lcom/android/server/autofill/Helper;->sanitizeRemoteView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v7

    if-nez v7, :cond_7c

    .line 287
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v6, :cond_101

    .line 288
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "not displaying UI on field "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " because service didn\'t provide a presentation for it on "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_101

    .line 295
    :cond_7c
    :try_start_7c
    sget-boolean v9, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v9, :cond_95

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setting remote view for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_95
    iget-object v9, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mContext:Landroid/content/Context;

    iget v10, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mThemeId:I

    const/4 v11, 0x0

    invoke-virtual {v7, v9, v11, v1, v10}, Landroid/widget/RemoteViews;->applyWithTheme(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;I)Landroid/view/View;

    move-result-object v12
    :try_end_9e
    .catch Ljava/lang/RuntimeException; {:try_start_7c .. :try_end_9e} :catch_fb

    .line 304
    invoke-virtual {v8, v6}, Landroid/service/autofill/Dataset;->getFilter(I)Landroid/service/autofill/Dataset$DatasetFieldFilter;

    move-result-object v7

    const/4 v9, 0x1

    if-nez v7, :cond_c9

    .line 309
    invoke-virtual {v8}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/autofill/AutofillValue;

    if-eqz v6, :cond_c4

    .line 310
    invoke-virtual {v6}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v7

    if-eqz v7, :cond_c4

    .line 311
    invoke-virtual {v6}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    goto :goto_c5

    :cond_c4
    move-object v6, v11

    :goto_c5
    move v10, v9

    move-object v9, v11

    move-object v11, v6

    goto :goto_f1

    .line 314
    :cond_c9
    iget-object v7, v7, Landroid/service/autofill/Dataset$DatasetFieldFilter;->pattern:Ljava/util/regex/Pattern;

    if-nez v7, :cond_ef

    .line 316
    sget-boolean v9, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v9, :cond_ed

    .line 317
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Explicitly disabling filter at id "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " for dataset #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ed
    move v10, v4

    goto :goto_f0

    :cond_ef
    move v10, v9

    :goto_f0
    move-object v9, v7

    .line 324
    :goto_f1
    new-instance v6, Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;

    move-object v7, v6

    invoke-direct/range {v7 .. v12}, Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;-><init>(Landroid/service/autofill/Dataset;Ljava/util/regex/Pattern;ZLjava/lang/String;Landroid/view/View;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_101

    :catch_fb
    move-exception v6

    const-string v7, "Error inflating remote views"

    .line 299
    invoke-static {v2, v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_101
    :goto_101
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_38

    :cond_105
    return-object v3
.end method

.method public destroy()V
    .registers 3

    .line 400
    :try_start_0
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_b

    const-string v0, "DialogFillUi"

    const-string v1, "destroy()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/DialogFillUi;->throwIfDestroyed()V

    .line 403
    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x1

    .line 404
    iput-boolean v0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mDestroyed:Z
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_1c

    .line 406
    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    invoke-virtual {p0}, Lcom/android/server/autofill/ui/OverlayControl;->showOverlays()V

    return-void

    :catchall_1c
    move-exception v0

    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    invoke-virtual {p0}, Lcom/android/server/autofill/ui/OverlayControl;->showOverlays()V

    .line 407
    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 10

    .line 424
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "service: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mServicePackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 425
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "app: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "theme id: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mThemeId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 427
    iget v0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mThemeId:I

    const v1, 0x103041b

    if-eq v0, v1, :cond_45

    const v1, 0x1030428

    if-eq v0, v1, :cond_3f

    const-string v0, "(UNKNOWN_MODE)"

    .line 435
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4a

    :cond_3f
    const-string v0, " (light)"

    .line 432
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4a

    :cond_45
    const-string v0, " (dark)"

    .line 429
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 438
    :goto_4a
    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 439
    invoke-virtual {v0}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v1

    .line 440
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "coordinates: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v2, 0x28

    .line 441
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

    .line 442
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 443
    aget v2, v1, v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 444
    aget v1, v1, v5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(C)V

    .line 445
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "destroyed: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mDestroyed:Z

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public final getVisibleDatasetsMaxCount()I
    .registers 3

    .line 155
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService;->getVisibleDatasetsMaxCount()I

    move-result v0

    if-lez v0, :cond_26

    .line 156
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService;->getVisibleDatasetsMaxCount()I

    move-result p0

    .line 157
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_25

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "overriding maximum visible datasets to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DialogFillUi"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    return p0

    .line 162
    :cond_26
    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e0004

    .line 163
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0
.end method

.method public hide()V
    .registers 3

    .line 390
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_b

    const-string v0, "DialogFillUi"

    const-string v1, "Hiding fill dialog."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_16

    .line 394
    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    invoke-virtual {p0}, Lcom/android/server/autofill/ui/OverlayControl;->showOverlays()V

    return-void

    :catchall_16
    move-exception v0

    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    invoke-virtual {p0}, Lcom/android/server/autofill/ui/OverlayControl;->showOverlays()V

    .line 395
    throw v0
.end method

.method public final initialAuthenticationLayout(Landroid/view/View;Landroid/service/autofill/FillResponse;)V
    .registers 9

    .line 238
    invoke-virtual {p2}, Landroid/service/autofill/FillResponse;->getDialogPresentation()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 237
    invoke-static {v0}, Lcom/android/server/autofill/Helper;->sanitizeRemoteView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v0

    if-nez v0, :cond_12

    .line 240
    invoke-virtual {p2}, Landroid/service/autofill/FillResponse;->getPresentation()Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/autofill/Helper;->sanitizeRemoteView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v0

    :cond_12
    if-eqz v0, :cond_49

    const v1, 0x102020b

    .line 247
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 248
    new-instance v2, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/autofill/ui/DialogFillUi;)V

    .line 254
    iget-object v3, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mContext:Landroid/content/Context;

    move-object v4, p1

    check-cast v4, Landroid/view/ViewGroup;

    iget v5, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mThemeId:I

    invoke-virtual {v0, v3, v4, v2, v5}, Landroid/widget/RemoteViews;->applyWithTheme(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;I)Landroid/view/View;

    move-result-object v0

    .line 256
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 257
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v0, 0x1

    .line 258
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 259
    new-instance v0, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/autofill/ui/DialogFillUi;Landroid/service/autofill/FillResponse;)V

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    new-instance v0, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2}, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/autofill/ui/DialogFillUi;Landroid/service/autofill/FillResponse;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/autofill/ui/DialogFillUi;->setContinueButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    return-void

    .line 243
    :cond_49
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "No presentation for fill dialog authentication"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final initialDatasetLayout(Landroid/view/View;Ljava/lang/String;)V
    .registers 6

    .line 331
    new-instance v0, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/autofill/ui/DialogFillUi;)V

    .line 337
    iget-object v1, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mAdapter:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 338
    iget-object v1, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 339
    iget-object v1, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 341
    iget-object v1, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mAdapter:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

    invoke-virtual {v1}, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_28

    .line 343
    new-instance v1, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda7;

    invoke-direct {v1, v0}, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda7;-><init>(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/autofill/ui/DialogFillUi;->setContinueButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    :cond_28
    if-nez p2, :cond_2e

    const/4 p1, 0x0

    .line 348
    iput-object p1, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mFilterText:Ljava/lang/String;

    goto :goto_34

    .line 350
    :cond_2e
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mFilterText:Ljava/lang/String;

    .line 353
    :goto_34
    iget-object p1, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mAdapter:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

    invoke-virtual {p1}, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->getCount()I

    move-result p1

    .line 354
    iget-object p2, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mAdapter:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

    invoke-virtual {p2}, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mFilterText:Ljava/lang/String;

    new-instance v1, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/autofill/ui/DialogFillUi;I)V

    invoke-virtual {p2, v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    return-void
.end method

.method public isShowing()Z
    .registers 1

    .line 386
    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    return p0
.end method

.method public final setContinueButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .registers 3

    const p0, 0x1020210

    .line 229
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const p1, 0x10401fd

    .line 231
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 232
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 233
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public final setDialogParamsAsBottomSheet()V
    .registers 3

    .line 168
    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7f6

    .line 169
    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    const v1, 0x20002

    .line 170
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const v1, 0x3f19999a    # 0.6f

    .line 172
    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    const/16 v1, 0x10

    .line 173
    invoke-virtual {v0, v1}, Landroid/view/Window;->addPrivateFlags(I)V

    const/16 v1, 0x20

    .line 174
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    const/16 v1, 0x51

    .line 175
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    const/4 v1, 0x1

    .line 176
    invoke-virtual {v0, v1}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 177
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    .line 178
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 179
    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mContext:Landroid/content/Context;

    const v1, 0x104021a

    .line 180
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    const p0, 0x1030321

    .line 181
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    return-void
.end method

.method public final setDismissButton(Landroid/view/View;)V
    .registers 3

    const v0, 0x102020e

    .line 222
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x1040224

    .line 224
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 225
    new-instance v0, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/autofill/ui/DialogFillUi;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setHeader(Landroid/view/View;Landroid/service/autofill/FillResponse;)V
    .registers 6

    .line 202
    invoke-virtual {p2}, Landroid/service/autofill/FillResponse;->getDialogHeader()Landroid/widget/RemoteViews;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/autofill/Helper;->sanitizeRemoteView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object p2

    if-nez p2, :cond_b

    return-void

    :cond_b
    const v0, 0x102020c

    .line 207
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 208
    new-instance v1, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/autofill/ui/DialogFillUi;)V

    .line 215
    iget-object v2, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/view/ViewGroup;

    iget p0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mThemeId:I

    invoke-virtual {p2, v2, p1, v1, p0}, Landroid/widget/RemoteViews;->applyWithTheme(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;I)Landroid/view/View;

    move-result-object p0

    .line 217
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 p0, 0x0

    .line 218
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public final setServiceIcon(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .registers 6

    if-nez p2, :cond_3

    return-void

    :cond_3
    const p0, 0x1020217

    .line 189
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    .line 190
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result p1

    .line 191
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 192
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_3c

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding service icon ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "x"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DialogFillUi"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_3c
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    .line 197
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public final show()V
    .registers 3

    const-string v0, "DialogFillUi"

    const-string v1, "Showing fill dialog"

    .line 380
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 382
    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    invoke-virtual {p0}, Lcom/android/server/autofill/ui/OverlayControl;->hideOverlays()V

    return-void
.end method

.method public final throwIfDestroyed()V
    .registers 2

    .line 411
    iget-boolean p0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mDestroyed:Z

    if-nez p0, :cond_5

    return-void

    .line 412
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "cannot interact with a destroyed instance"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    const-string p0, "NO TITLE"

    return-object p0
.end method
