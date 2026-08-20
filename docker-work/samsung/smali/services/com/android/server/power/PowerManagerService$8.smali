.class public Lcom/android/server/power/PowerManagerService$8;
.super Lcom/samsung/android/cover/CoverManager$CoverStateListener;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .registers 2

    .line 8088
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$8;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager$CoverStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverAttachStateChanged(Z)V
    .registers 5

    .line 8095
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$8;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmFeatureCoverSysfs(Lcom/android/server/power/PowerManagerService;)Z

    move-result v0

    if-eqz v0, :cond_78

    const-string v0, "PowerManagerService"

    if-eqz p1, :cond_22

    .line 8098
    :try_start_c
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$8;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmCoverManager(Lcom/android/server/power/PowerManagerService;)Lcom/samsung/android/cover/CoverManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 8100
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$8;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    invoke-static {v2, v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmCoverType(Lcom/android/server/power/PowerManagerService;I)V

    goto :goto_28

    .line 8103
    :cond_22
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$8;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmCoverType(Lcom/android/server/power/PowerManagerService;I)V

    .line 8105
    :cond_28
    :goto_28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCoverAttachStateChanged: attach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "  mCoverType: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$8;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmCoverType(Lcom/android/server/power/PowerManagerService;)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_4b} :catch_4c

    goto :goto_52

    :catch_4c
    const-string/jumbo p1, "onCoverAttachStateChanged: mCoverManager returns NULL."

    .line 8107
    invoke-static {v0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8110
    :goto_52
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 8111
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$8;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p1, v0, v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmlastSetCoverTypeTime(Lcom/android/server/power/PowerManagerService;J)V

    .line 8112
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$8;->this$0:Lcom/android/server/power/PowerManagerService;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCoverAttachStateChanged = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$8;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmCoverType(Lcom/android/server/power/PowerManagerService;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmlastUpdateCoverTypeReason(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V

    :cond_78
    return-void
.end method

.method public onCoverSwitchStateChanged(Z)V
    .registers 2

    return-void
.end method
