.class Lcom/android/internal/telephony/data/DataProfileManager$1;
.super Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;
.source "DataProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/data/DataProfileManager;->registerAllEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/DataProfileManager;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/data/DataProfileManager;Ljava/util/concurrent/Executor;)V
    .registers 3

    .line 172
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataProfileManager$1;->this$0:Lcom/android/internal/telephony/data/DataProfileManager;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public blacklist onInternetDataNetworkConnected(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/data/DataProfile;",
            ">;)V"
        }
    .end annotation

    .line 176
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager$1;->this$0:Lcom/android/internal/telephony/data/DataProfileManager;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->-$$Nest$monInternetDataNetworkConnected(Lcom/android/internal/telephony/data/DataProfileManager;Ljava/util/List;)V

    return-void
.end method
