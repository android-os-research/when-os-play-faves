.class public final Lcom/android/server/autofill/PresentationStatsEventLogger;
.super Ljava/lang/Object;
.source "PresentationStatsEventLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;,
        Lcom/android/server/autofill/PresentationStatsEventLogger$NotShownReason;
    }
.end annotation


# static fields
.field public static final NOT_SHOWN_REASON_ACTIVITY_FINISHED:I = 0x4

.field public static final NOT_SHOWN_REASON_ANY_SHOWN:I = 0x1

.field public static final NOT_SHOWN_REASON_REQUEST_TIMEOUT:I = 0x5

.field public static final NOT_SHOWN_REASON_SESSION_COMMITTED_PREMATURELY:I = 0x6

.field public static final NOT_SHOWN_REASON_UNKNOWN:I = 0x0

.field public static final NOT_SHOWN_REASON_VIEW_CHANGED:I = 0x3

.field public static final NOT_SHOWN_REASON_VIEW_FOCUS_CHANGED:I = 0x2

.field public static final TAG:Ljava/lang/String; = "PresentationStatsEventLogger"


# instance fields
.field public mEventInternal:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;",
            ">;"
        }
    .end annotation
.end field

.field public final mSessionId:I


# direct methods
.method public static synthetic $r8$lambda$47vE0L5eGawYwlo4xt2HwbRT1uE(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->lambda$maybeSetCountNotShownImePresentationNotDrawn$5(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4fZiSBDMdcT1MOvjYSMln2fbF_Q(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->lambda$maybeSetDisplayPresentationType$7(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KbbuAfnLlfacdPrM55p81ct2XLo(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->lambda$maybeSetCountFilteredUserTyping$4(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MdI3AXDPShbutzuyGpRev3V58EY(Ljava/util/List;Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/autofill/PresentationStatsEventLogger;->lambda$maybeSetCountShown$3(Ljava/util/List;Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$elhiqBbWtCkxBK3T7KJfKicku6M(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->lambda$maybeSetNoPresentationEventReason$1(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$genV5_6jr_SwtSL3LEI4OnEjGjU(Ljava/util/List;Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/autofill/PresentationStatsEventLogger;->lambda$maybeSetAvailableCount$2(Ljava/util/List;Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$imu690k2WhBmB39epkYWZG7iSiM(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->lambda$maybeSetRequestId$0(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$u78GlROpqkKq8g5eMgty01Av1AY(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->lambda$maybeSetCountNotShownImeUserNotSeen$6(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput p1, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mSessionId:I

    .line 88
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    return-void
.end method

.method public static forSessionId(I)Lcom/android/server/autofill/PresentationStatsEventLogger;
    .registers 2

    .line 92
    new-instance v0, Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-direct {v0, p0}, Lcom/android/server/autofill/PresentationStatsEventLogger;-><init>(I)V

    return-object v0
.end method

.method public static getDatasetCountForAutofillId(Ljava/util/List;Landroid/view/autofill/AutofillId;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/autofill/Dataset;",
            ">;",
            "Landroid/view/autofill/AutofillId;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_28

    move v1, v0

    .line 139
    :goto_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_27

    .line 140
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/autofill/Dataset;

    if-eqz v2, :cond_24

    .line 141
    invoke-virtual {v2}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_24

    .line 142
    invoke-virtual {v2}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    add-int/lit8 v1, v1, 0x1

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_27
    move v0, v1

    :cond_28
    return v0
.end method

.method public static getDisplayPresentationType(I)I
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_b

    const/4 v0, 0x2

    if-eq p0, v0, :cond_b

    const/4 v0, 0x3

    if-eq p0, v0, :cond_b

    const/4 p0, 0x0

    return p0

    :cond_b
    return v0
.end method

.method public static getNoPresentationEventReason(I)I
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p0, v0, :cond_f

    const/4 v0, 0x2

    if-eq p0, v0, :cond_d

    if-eq p0, v1, :cond_b

    const/4 p0, 0x0

    return p0

    :cond_b
    const/4 p0, 0x3

    return p0

    :cond_d
    const/4 p0, 0x6

    return p0

    :cond_f
    return v1
.end method

.method public static synthetic lambda$maybeSetAvailableCount$2(Ljava/util/List;Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .registers 3

    .line 118
    invoke-static {p0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->getDatasetCountForAutofillId(Ljava/util/List;Landroid/view/autofill/AutofillId;)I

    move-result p0

    .line 119
    iput p0, p2, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAvailableCount:I

    if-lez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    .line 120
    :goto_b
    iput-boolean p0, p2, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mIsDatasetAvailable:Z

    return-void
.end method

.method public static synthetic lambda$maybeSetCountFilteredUserTyping$4(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .registers 2

    .line 152
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountFilteredUserTyping:I

    return-void
.end method

.method public static synthetic lambda$maybeSetCountNotShownImePresentationNotDrawn$5(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .registers 2

    .line 159
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountNotShownImePresentationNotDrawn:I

    return-void
.end method

.method public static synthetic lambda$maybeSetCountNotShownImeUserNotSeen$6(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .registers 2

    .line 165
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountNotShownImeUserNotSeen:I

    return-void
.end method

.method public static synthetic lambda$maybeSetCountShown$3(Ljava/util/List;Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .registers 3

    .line 127
    invoke-static {p0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->getDatasetCountForAutofillId(Ljava/util/List;Landroid/view/autofill/AutofillId;)I

    move-result p0

    .line 128
    iput p0, p2, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountShown:I

    if-lez p0, :cond_b

    const/4 p0, 0x1

    .line 130
    iput p0, p2, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mNoPresentationReason:I

    :cond_b
    return-void
.end method

.method public static synthetic lambda$maybeSetDisplayPresentationType$7(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .registers 2

    .line 171
    invoke-static {p0}, Lcom/android/server/autofill/PresentationStatsEventLogger;->getDisplayPresentationType(I)I

    move-result p0

    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mDisplayPresentationType:I

    return-void
.end method

.method public static synthetic lambda$maybeSetNoPresentationEventReason$1(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .registers 3

    .line 109
    iget v0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountShown:I

    if-nez v0, :cond_6

    .line 110
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mNoPresentationReason:I

    :cond_6
    return-void
.end method

.method public static synthetic lambda$maybeSetRequestId$0(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .registers 2

    .line 104
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mRequestId:I

    return-void
.end method


# virtual methods
.method public logAndEndEvent()V
    .registers 12

    .line 176
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const-string v1, "PresentationStatsEventLogger"

    if-nez v0, :cond_10

    const-string p0, "Shouldn\'t be logging AutofillPresentationEventReported again for same event"

    .line 177
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 181
    :cond_10
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 182
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_82

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Log AutofillPresentationEventReported: requestId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mRequestId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " sessionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mSessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mNoPresentationEventReason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mNoPresentationReason:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mAvailableCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAvailableCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mCountShown="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountShown:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mCountFilteredUserTyping="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountFilteredUserTyping:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mCountNotShownImePresentationNotDrawn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountNotShownImePresentationNotDrawn:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mCountNotShownImeUserNotSeen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountNotShownImeUserNotSeen:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mDisplayPresentationType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mDisplayPresentationType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_82
    iget-boolean v1, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mIsDatasetAvailable:Z

    if-nez v1, :cond_8d

    .line 198
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    return-void

    :cond_8d
    const/16 v1, 0x1d5

    .line 201
    iget v2, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mRequestId:I

    iget v3, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mSessionId:I

    iget v4, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mNoPresentationReason:I

    iget v5, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAvailableCount:I

    iget v6, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountShown:I

    iget v7, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountFilteredUserTyping:I

    iget v8, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountNotShownImePresentationNotDrawn:I

    iget v9, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountNotShownImeUserNotSeen:I

    iget v10, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mDisplayPresentationType:I

    invoke-static/range {v1 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIIIIII)V

    .line 212
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    return-void
.end method

.method public maybeSetAvailableCount(Ljava/util/List;Landroid/view/autofill/AutofillId;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/autofill/Dataset;",
            ">;",
            "Landroid/view/autofill/AutofillId;",
            ")V"
        }
    .end annotation

    .line 117
    iget-object p0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;Landroid/view/autofill/AutofillId;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetCountFilteredUserTyping(I)V
    .registers 3

    .line 151
    iget-object p0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetCountNotShownImePresentationNotDrawn(I)V
    .registers 3

    .line 158
    iget-object p0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetCountNotShownImeUserNotSeen(I)V
    .registers 3

    .line 164
    iget-object p0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetCountShown(Ljava/util/List;Landroid/view/autofill/AutofillId;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/autofill/Dataset;",
            ">;",
            "Landroid/view/autofill/AutofillId;",
            ")V"
        }
    .end annotation

    .line 126
    iget-object p0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1, p2}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda6;-><init>(Ljava/util/List;Landroid/view/autofill/AutofillId;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetDisplayPresentationType(I)V
    .registers 3

    .line 170
    iget-object p0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda5;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetNoPresentationEventReason(I)V
    .registers 3

    .line 108
    iget-object p0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeSetRequestId(I)V
    .registers 3

    .line 104
    iget-object p0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public startNewEvent()V
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string p0, "PresentationStatsEventLogger"

    const-string v0, "Failed to start new event because already have active event."

    .line 97
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 100
    :cond_10
    new-instance v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    invoke-direct {v0, p0}, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;-><init>(Lcom/android/server/autofill/PresentationStatsEventLogger;)V

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    return-void
.end method
