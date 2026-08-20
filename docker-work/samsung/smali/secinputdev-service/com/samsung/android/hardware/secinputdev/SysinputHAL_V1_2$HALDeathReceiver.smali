.class final Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2$HALDeathReceiver;
.super Ljava/lang/Object;
.source "SysinputHAL_V1_2.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HALDeathReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;


# direct methods
.method private constructor <init>(Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;)V
    .registers 2

    .line 61
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2$HALDeathReceiver;->this$0:Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2$HALDeathReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2$HALDeathReceiver;-><init>(Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;)V

    return-void
.end method


# virtual methods
.method public serviceDied(J)V
    .registers 6
    .param p1, "cookie"    # J

    .line 64
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2$HALDeathReceiver;->this$0:Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->-$$Nest$fgetTAG(Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serviceDied: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2$HALDeathReceiver;->this$0:Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->setServiceNullAndRecovery()V

    .line 66
    return-void
.end method
