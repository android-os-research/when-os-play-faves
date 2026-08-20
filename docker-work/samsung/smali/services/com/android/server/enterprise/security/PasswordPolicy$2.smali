.class public Lcom/android/server/enterprise/security/PasswordPolicy$2;
.super Ljava/lang/Object;
.source "PasswordPolicy.java"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/security/PasswordPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/security/PasswordPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/security/PasswordPolicy;)V
    .registers 2

    .line 185
    iput-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$2;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBlocked()Ljava/lang/String;
    .registers 2

    .line 189
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$2;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    invoke-static {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->-$$Nest$fgetmContext(Lcom/android/server/enterprise/security/PasswordPolicy;)Landroid/content/Context;

    move-result-object p0

    const v0, 0x1040434

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
