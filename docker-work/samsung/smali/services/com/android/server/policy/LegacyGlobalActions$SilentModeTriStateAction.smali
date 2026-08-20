.class public Lcom/android/server/policy/LegacyGlobalActions$SilentModeTriStateAction;
.super Ljava/lang/Object;
.source "LegacyGlobalActions.java"

# interfaces
.implements Lcom/android/internal/globalactions/Action;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/LegacyGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SilentModeTriStateAction"
.end annotation


# instance fields
.field public final ITEM_IDS:[I

.field public final mAudioManager:Landroid/media/AudioManager;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/os/Handler;)V
    .registers 5

    .line 671
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 665
    fill-array-data v0, :array_12

    iput-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$SilentModeTriStateAction;->ITEM_IDS:[I

    .line 672
    iput-object p2, p0, Lcom/android/server/policy/LegacyGlobalActions$SilentModeTriStateAction;->mAudioManager:Landroid/media/AudioManager;

    .line 673
    iput-object p3, p0, Lcom/android/server/policy/LegacyGlobalActions$SilentModeTriStateAction;->mHandler:Landroid/os/Handler;

    .line 674
    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$SilentModeTriStateAction;->mContext:Landroid/content/Context;

    return-void

    :array_12
    .array-data 4
        0x1020472
        0x1020473
        0x1020474
    .end array-data
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 7

    const p1, 0x1090095

    const/4 p2, 0x0

    .line 695
    invoke-virtual {p4, p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 697
    iget-object p3, p0, Lcom/android/server/policy/LegacyGlobalActions$SilentModeTriStateAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/android/server/policy/LegacyGlobalActions$SilentModeTriStateAction;->ringerModeToIndex(I)I

    move-result p3

    move p4, p2

    :goto_13
    const/4 v0, 0x3

    if-ge p4, v0, :cond_33

    .line 699
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$SilentModeTriStateAction;->ITEM_IDS:[I

    aget v0, v0, p4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-ne p3, p4, :cond_22

    const/4 v1, 0x1

    goto :goto_23

    :cond_22
    move v1, p2

    .line 700
    :goto_23
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 702
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 703
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_13

    :cond_33
    return-object p1
.end method

.method public getLabelForAccessibility(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public final indexToRingerMode(I)I
    .registers 2

    return p1
.end method

.method public isEnabled()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 732
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-nez v0, :cond_9

    return-void

    .line 734
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 735
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$SilentModeTriStateAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Lcom/android/server/policy/LegacyGlobalActions$SilentModeTriStateAction;->indexToRingerMode(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 736
    iget-object p0, p0, Lcom/android/server/policy/LegacyGlobalActions$SilentModeTriStateAction;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onPress()V
    .registers 1

    return-void
.end method

.method public final ringerModeToIndex(I)I
    .registers 2

    return p1
.end method

.method public showBeforeProvisioning()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public showDuringKeyguard()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public willCreate()V
    .registers 1

    return-void
.end method
