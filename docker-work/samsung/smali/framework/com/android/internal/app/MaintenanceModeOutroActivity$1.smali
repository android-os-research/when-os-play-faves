.class Lcom/android/internal/app/MaintenanceModeOutroActivity$1;
.super Ljava/lang/Object;
.source "MaintenanceModeOutroActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/MaintenanceModeOutroActivity;->setContentView(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/MaintenanceModeOutroActivity;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/MaintenanceModeOutroActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/app/MaintenanceModeOutroActivity;

    .line 154
    iput-object p1, p0, Lcom/android/internal/app/MaintenanceModeOutroActivity$1;->this$0:Lcom/android/internal/app/MaintenanceModeOutroActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 157
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeOutroActivity$1;->this$0:Lcom/android/internal/app/MaintenanceModeOutroActivity;

    invoke-static {v0}, Lcom/android/internal/app/MaintenanceModeOutroActivity;->-$$Nest$mshowDialog(Lcom/android/internal/app/MaintenanceModeOutroActivity;)V

    .line 158
    return-void
.end method
