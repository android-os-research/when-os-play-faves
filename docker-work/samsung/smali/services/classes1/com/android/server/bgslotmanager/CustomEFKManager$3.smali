.class public Lcom/android/server/bgslotmanager/CustomEFKManager$3;
.super Landroid/os/CountDownTimer;
.source "CustomEFKManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/bgslotmanager/CustomEFKManager;->runDecEFKBoost(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/bgslotmanager/CustomEFKManager;


# direct methods
.method public constructor <init>(Lcom/android/server/bgslotmanager/CustomEFKManager;JJ)V
    .registers 6

    .line 117
    iput-object p1, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$3;->this$0:Lcom/android/server/bgslotmanager/CustomEFKManager;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 1

    .line 123
    iget-object p0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$3;->this$0:Lcom/android/server/bgslotmanager/CustomEFKManager;

    invoke-static {p0}, Lcom/android/server/bgslotmanager/CustomEFKManager;->-$$Nest$mrestoreEFKAfterBoot(Lcom/android/server/bgslotmanager/CustomEFKManager;)V

    return-void
.end method

.method public onTick(J)V
    .registers 3

    return-void
.end method
