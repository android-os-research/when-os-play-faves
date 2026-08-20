.class public Lcom/android/server/enterprise/security/SecurityPolicy$1;
.super Ljava/lang/Object;
.source "SecurityPolicy.java"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/security/SecurityPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/security/SecurityPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/security/SecurityPolicy;)V
    .registers 2

    .line 216
    iput-object p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy$1;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBlocked()Ljava/lang/String;
    .registers 2

    .line 220
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy$1;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    invoke-static {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->-$$Nest$fgetmContext(Lcom/android/server/enterprise/security/SecurityPolicy;)Landroid/content/Context;

    move-result-object p0

    const v0, 0x1040434

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
