.class Lcom/android/server/ssrm/CustomFrequencyManagerService$2;
.super Ljava/lang/Object;
.source "CustomFrequencyManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ssrm/CustomFrequencyManagerService;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ssrm/CustomFrequencyManagerService;

    .line 577
    iput-object p1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$2;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 580
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$sfputsIsCallActivityOn(Z)V

    .line 581
    return-void
.end method
