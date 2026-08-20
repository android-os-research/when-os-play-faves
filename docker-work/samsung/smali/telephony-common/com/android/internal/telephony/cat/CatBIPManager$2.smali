.class Lcom/android/internal/telephony/cat/CatBIPManager$2;
.super Ljava/lang/Object;
.source "CatBIPManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/cat/CatBIPManager;->handleSendData(Lcom/android/internal/telephony/cat/SendDataParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

.field final synthetic blacklist val$bipcon:Lcom/android/internal/telephony/cat/CatBIPConnection;

.field final synthetic blacklist val$channelData:[B

.field final synthetic blacklist val$sendImmediate:Z


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/cat/CatBIPManager;Lcom/android/internal/telephony/cat/CatBIPConnection;[BZ)V
    .registers 5

    .line 625
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager$2;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    iput-object p2, p0, Lcom/android/internal/telephony/cat/CatBIPManager$2;->val$bipcon:Lcom/android/internal/telephony/cat/CatBIPConnection;

    iput-object p3, p0, Lcom/android/internal/telephony/cat/CatBIPManager$2;->val$channelData:[B

    iput-boolean p4, p0, Lcom/android/internal/telephony/cat/CatBIPManager$2;->val$sendImmediate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 627
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager$2;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager$2;->val$bipcon:Lcom/android/internal/telephony/cat/CatBIPConnection;

    check-cast v1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager$2;->val$channelData:[B

    iget-boolean p0, p0, Lcom/android/internal/telephony/cat/CatBIPManager$2;->val$sendImmediate:Z

    invoke-static {v0, v1, v2, p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->-$$Nest$msendDataClientMode(Lcom/android/internal/telephony/cat/CatBIPManager;Lcom/android/internal/telephony/cat/CatBIPClientConnection;[BZ)V

    return-void
.end method
