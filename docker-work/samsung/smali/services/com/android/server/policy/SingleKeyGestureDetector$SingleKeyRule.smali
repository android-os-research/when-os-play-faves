.class public abstract Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;
.super Ljava/lang/Object;
.source "SingleKeyGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/SingleKeyGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SingleKeyRule"
.end annotation


# instance fields
.field public extensionLongPressTimeout:J

.field public extensionMultiPressTimeout:J

.field public mIsKeyLongPressed:Z

.field public final mKeyCode:I

.field public final mSupportedGestures:I


# direct methods
.method public static bridge synthetic -$$Nest$mshouldInterceptKey(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->shouldInterceptKey(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msupportLongPress(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->supportLongPress()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msupportVeryLongPress(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->supportVeryLongPress()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(II)V
    .registers 5

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 149
    iput-boolean v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mIsKeyLongPressed:Z

    const-wide/16 v0, 0x0

    .line 151
    iput-wide v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->extensionLongPressTimeout:J

    .line 152
    iput-wide v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->extensionMultiPressTimeout:J

    .line 156
    iput p1, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    .line 157
    iput p2, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mSupportedGestures:I

    return-void
.end method


# virtual methods
.method public getLongPressTimeoutMs()J
    .registers 5

    .line 236
    iget-wide v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->extensionLongPressTimeout:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_9

    return-wide v0

    .line 240
    :cond_9
    sget-wide v0, Lcom/android/server/policy/SingleKeyGestureDetector;->sDefaultLongPressTimeout:J

    return-wide v0
.end method

.method public getMaxMultiPressCount()I
    .registers 4

    .line 190
    invoke-static {}, Lcom/android/server/policy/SingleKeyGestureDetector;->-$$Nest$sfgetmKeyCustomizationPolicy()Lcom/android/server/policy/KeyCustomizationManager;

    move-result-object v0

    iget v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    const/16 v2, 0x40

    invoke-virtual {v0, v2, v1}, Lcom/android/server/policy/KeyCustomizationManager;->hasLastInfo(II)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p0, 0x5

    return p0

    .line 193
    :cond_10
    invoke-static {}, Lcom/android/server/policy/SingleKeyGestureDetector;->-$$Nest$sfgetmKeyCustomizationPolicy()Lcom/android/server/policy/KeyCustomizationManager;

    move-result-object v0

    const/16 v1, 0x20

    iget v2, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/KeyCustomizationManager;->hasLastInfo(II)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 p0, 0x4

    return p0

    .line 196
    :cond_20
    invoke-static {}, Lcom/android/server/policy/SingleKeyGestureDetector;->-$$Nest$sfgetmKeyCustomizationPolicy()Lcom/android/server/policy/KeyCustomizationManager;

    move-result-object v0

    const/16 v1, 0x10

    iget v2, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/KeyCustomizationManager;->hasLastInfo(II)Z

    move-result v0

    if-eqz v0, :cond_30

    const/4 p0, 0x3

    return p0

    .line 199
    :cond_30
    invoke-static {}, Lcom/android/server/policy/SingleKeyGestureDetector;->-$$Nest$sfgetmKeyCustomizationPolicy()Lcom/android/server/policy/KeyCustomizationManager;

    move-result-object v0

    const/16 v1, 0x8

    iget p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    invoke-virtual {v0, v1, p0}, Lcom/android/server/policy/KeyCustomizationManager;->hasLastInfo(II)Z

    move-result p0

    if-eqz p0, :cond_40

    const/4 p0, 0x2

    return p0

    :cond_40
    const/4 p0, 0x1

    return p0
.end method

.method public getMultiPressTimeoutMs()J
    .registers 5

    .line 316
    iget-wide v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->extensionMultiPressTimeout:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_9

    return-wide v0

    .line 319
    :cond_9
    sget-wide v0, Lcom/android/server/policy/SingleKeyGestureDetector;->sDefaultMultiPressTimeout:J

    return-wide v0
.end method

.method public getVeryLongPressTimeoutMs()J
    .registers 3

    .line 262
    sget-wide v0, Lcom/android/server/policy/SingleKeyGestureDetector;->sDefaultVeryLongPressTimeout:J

    return-wide v0
.end method

.method public hasExtensionLongPressTimeout()Z
    .registers 6

    .line 306
    iget-wide v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->extensionLongPressTimeout:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    const/4 v2, 0x0

    if-nez p0, :cond_a

    return v2

    .line 309
    :cond_a
    sget-wide v3, Lcom/android/server/policy/SingleKeyGestureDetector;->sDefaultLongPressTimeout:J

    cmp-long p0, v3, v0

    if-gez p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    return v2
.end method

.method public onKeyDown(Landroid/view/KeyEvent;)V
    .registers 3

    const/4 v0, 0x0

    .line 274
    iput-boolean v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mIsKeyLongPressed:Z

    .line 275
    invoke-virtual {p0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->sendBroadcastIfNeeded(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public onKeyUp(Landroid/view/KeyEvent;)V
    .registers 2

    .line 282
    invoke-virtual {p0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->sendBroadcastIfNeeded(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public onLongPress(JLandroid/view/KeyEvent;I)V
    .registers 5

    const/4 p1, 0x1

    .line 251
    iput-boolean p1, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mIsKeyLongPressed:Z

    .line 252
    invoke-static {}, Lcom/android/server/policy/SingleKeyGestureDetector;->-$$Nest$sfgetmKeyCustomizationPolicy()Lcom/android/server/policy/KeyCustomizationManager;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/server/policy/KeyCustomizationManager;->launchLongPressAction(Landroid/view/KeyEvent;)Z

    return-void
.end method

.method public onMultiPress(JILandroid/view/KeyEvent;)V
    .registers 5

    .line 223
    invoke-static {}, Lcom/android/server/policy/SingleKeyGestureDetector;->-$$Nest$sfgetmKeyCustomizationPolicy()Lcom/android/server/policy/KeyCustomizationManager;

    move-result-object p0

    invoke-virtual {p0, p4, p3}, Lcom/android/server/policy/KeyCustomizationManager;->launchMultiPressAction(Landroid/view/KeyEvent;I)Z

    return-void
.end method

.method public abstract onPress(JLandroid/view/KeyEvent;)V
.end method

.method public onVeryLongPress(J)V
    .registers 3

    return-void
.end method

.method public final sendBroadcastIfNeeded(Landroid/view/KeyEvent;)V
    .registers 5

    .line 286
    sget-object v0, Lcom/android/server/policy/SingleKeyGestureDetector;->KEYCODE_KEY_DISPATCHING_ALLOWLIST:Ljava/util/Set;

    iget v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 287
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_18

    return-void

    .line 291
    :cond_18
    invoke-static {}, Lcom/android/server/policy/SingleKeyGestureDetector;->-$$Nest$sfgetmKeyCustomizationPolicy()Lcom/android/server/policy/KeyCustomizationManager;

    move-result-object v0

    const/4 v1, 0x3

    iget v2, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/KeyCustomizationManager;->getLastAction(II)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_31

    .line 293
    invoke-static {}, Lcom/android/server/policy/SingleKeyGestureDetector;->-$$Nest$sfgetmKeyCustomizationPolicy()Lcom/android/server/policy/KeyCustomizationManager;

    move-result-object v0

    iget v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    iget-boolean p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mIsKeyLongPressed:Z

    invoke-virtual {v0, p1, v1, p0}, Lcom/android/server/policy/KeyCustomizationManager;->launchPressSendBroadcast(Landroid/view/KeyEvent;IZ)V

    :cond_31
    return-void
.end method

.method public setLongPressTimeoutMs(J)V
    .registers 5

    .line 299
    invoke-virtual {p0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->getLongPressTimeoutMs()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_9

    return-void

    .line 302
    :cond_9
    iput-wide p1, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->extensionLongPressTimeout:J

    return-void
.end method

.method public setMultiPressTimeout(J)V
    .registers 5

    .line 323
    invoke-virtual {p0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->getMultiPressTimeoutMs()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_9

    return-void

    .line 326
    :cond_9
    iput-wide p1, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->extensionMultiPressTimeout:J

    return-void
.end method

.method public final shouldInterceptKey(I)Z
    .registers 2

    .line 164
    iget p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    if-ne p1, p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public final supportLongPress()Z
    .registers 1

    .line 171
    iget p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mSupportedGestures:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public final supportVeryLongPress()Z
    .registers 1

    .line 178
    iget p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mSupportedGestures:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    invoke-static {v2}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", LongPress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->supportLongPress()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {p0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->supportVeryLongPress()Z

    move-result v1

    if-eqz v1, :cond_42

    const-string v1, ", VeryLongPress=true"

    .line 338
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    :cond_42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", MaxMultiPressCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->getMaxMultiPressCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    iget-wide v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->extensionLongPressTimeout:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_78

    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", ExtLongPressTimeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->extensionLongPressTimeout:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    :cond_78
    iget-wide v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->extensionMultiPressTimeout:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_94

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", ExtMultiPressTimeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->extensionMultiPressTimeout:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    :cond_94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
