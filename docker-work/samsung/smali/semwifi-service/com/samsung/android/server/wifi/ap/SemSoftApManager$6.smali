.class Lcom/samsung/android/server/wifi/ap/SemSoftApManager$6;
.super Ljava/lang/Object;
.source "SemSoftApManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommandToHandler(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

.field final synthetic val$command:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;Ljava/lang/String;)V
    .registers 3

    .line 1027
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$6;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$6;->val$command:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1030
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$6;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmHostapdHal(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Lcom/samsung/android/server/wifi/ap/SemHostapdHal;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$6;->val$command:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
