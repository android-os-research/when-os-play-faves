.class Lcom/samsung/android/server/wifi/ap/SemSoftApManager$3;
.super Ljava/lang/Object;
.source "SemSoftApManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->handleAirplaneMode(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)V
    .registers 2

    .line 655
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$3;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 658
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$3;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$mhandleSoftapEnable(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)V

    return-void
.end method
