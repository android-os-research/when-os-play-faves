.class public Lcom/android/server/enterprise/restriction/RestrictionPolicy$2;
.super Landroid/content/BroadcastReceiver;
.source "RestrictionPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/restriction/RestrictionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V
    .registers 2

    .line 438
    iput-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$2;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    const-string p1, "RestrictionPolicy"

    const-string v0, "FOTAReceiver: onReceive"

    .line 442
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sec.fota.intent.MDM_REGISTER_RESULT"

    .line 445
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "result"

    const/4 v3, 0x0

    if-eqz v1, :cond_4d

    .line 447
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_41

    if-eq p2, v0, :cond_41

    .line 454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FOTAReceiver: action:sec.fota.intent.MDM_REGISTER_RESULT failure("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$2;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-static {p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->-$$Nest$mclearSelectiveFota(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)Z

    move v3, v0

    goto :goto_46

    :cond_41
    const-string p2, "action:sec.fota.intent.MDM_REGISTER_RESULT success"

    .line 458
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :goto_46
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$2;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-static {p0, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->-$$Nest$msendSeletiveFotaResult(Lcom/android/server/enterprise/restriction/RestrictionPolicy;I)V

    goto/16 :goto_c3

    :cond_4d
    const-string v1, "com.xdm.intent.UPDATE_RESULT"

    .line 462
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 470
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$2;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getAllowedFOTAInfo(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_64

    const-string p0, "action:com.xdm.intent.UPDATE_RESULT ignore"

    .line 472
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 475
    :cond_64
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x5

    add-int/2addr p2, v0

    .line 478
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action:com.xdm.intent.UPDATE_RESULT = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x8

    if-gt p2, p1, :cond_8b

    if-ge p2, v0, :cond_85

    goto :goto_8b

    .line 482
    :cond_85
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$2;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-static {p0, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->-$$Nest$msendSeletiveFotaResult(Lcom/android/server/enterprise/restriction/RestrictionPolicy;I)V

    goto :goto_c3

    :cond_8b
    :goto_8b
    return-void

    :cond_8c
    const-string/jumbo p2, "sec.fota.intent.MDM_UNREGISTER"

    .line 484
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c3

    const-string p2, "FOTAReceiver: action:sec.fota.intent.MDM_UNREGISTER"

    .line 485
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$2;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-static {p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->-$$Nest$mclearSelectiveFota(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)Z

    const/4 p1, 0x2

    const-string p2, "com.wssyncmldm"

    const-string v0, "com.samsung.utagent"

    .line 487
    filled-new-array {p2, v0}, [Ljava/lang/String;

    move-result-object p2

    :goto_a8
    if-ge v3, p1, :cond_c3

    .line 490
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "sec.fota.intent.MDM_REGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 491
    aget-object v1, p2, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 492
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$2;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-static {v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->-$$Nest$fgetmContext(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_a8

    :cond_c3
    :goto_c3
    return-void
.end method
