.class Lcom/android/server/ssrm/DynamicLoadDetector$2;
.super Ljava/lang/Object;
.source "DynamicLoadDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/DynamicLoadDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/DynamicLoadDetector;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/DynamicLoadDetector;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ssrm/DynamicLoadDetector;

    .line 101
    iput-object p1, p0, Lcom/android/server/ssrm/DynamicLoadDetector$2;->this$0:Lcom/android/server/ssrm/DynamicLoadDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector$2;->this$0:Lcom/android/server/ssrm/DynamicLoadDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/DynamicLoadDetector;->shiftSiopTable(Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    .line 109
    goto :goto_24

    .line 107
    :catch_7
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/ssrm/DynamicLoadDetector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSiopShiftRunnable:: e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_24
    return-void
.end method
