.class Lcom/android/server/ssrm/fgapps/GestureDetectPerformance$1;
.super Landroid/database/ContentObserver;
.source "GestureDetectPerformance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;
    .param p2, "arg0"    # Landroid/os/Handler;

    .line 72
    iput-object p1, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance$1;->this$0:Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6
    .param p1, "selfChange"    # Z

    .line 75
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance$1;->this$0:Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;

    invoke-static {}, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->-$$Nest$sfgetmContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "refresh_rate_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->-$$Nest$fputrefreshRateMode(Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;I)V

    .line 77
    invoke-static {}, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mGestureDetectObserver refreshRateMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance$1;->this$0:Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;

    invoke-static {v2}, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->-$$Nest$fgetrefreshRateMode(Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method
