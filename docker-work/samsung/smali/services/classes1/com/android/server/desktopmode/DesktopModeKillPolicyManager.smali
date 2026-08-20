.class public Lcom/android/server/desktopmode/DesktopModeKillPolicyManager;
.super Ljava/lang/Object;
.source "DesktopModeKillPolicyManager.java"


# static fields
.field public static final KEEP_POLICY_PACKAGES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final KILL_POLICY_KEY_KEEP_PACKAGES:Ljava/lang/String; = "keep_packages"

.field public static final KILL_POLICY_KEY_KILL_PACKAGES:Ljava/lang/String; = "kill_packages"

.field public static final KILL_POLICY_KEY_NAME:Ljava/lang/String; = "name"

.field public static final KILL_POLICY_KEY_SKIP_SDK_VERSION_CHECK:Ljava/lang/String; = "skip_sdk_version_check"

.field public static final KILL_POLICY_NAME:Ljava/lang/String; = "DeX"

.field public static final KILL_POLICY_PACKAGES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DMS_POLICY]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/DesktopModeKillPolicyManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/DesktopModeKillPolicyManager;->TAG:Ljava/lang/String;

    const-string v1, "com.google.android.apps.tachyon"

    const-string v2, "com.google.android.music"

    const-string v3, "com.google.android.videos"

    const-string v4, "com.google.android.apps.photos"

    const-string v5, "com.google.android.apps.docs"

    const-string v6, "com.google.android.apps.docs.editors.docs"

    const-string v7, "com.google.android.apps.docs.editors.sheets"

    const-string v8, "com.google.android.apps.docs.editors.slides"

    .line 22
    invoke-static/range {v1 .. v8}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/DesktopModeKillPolicyManager;->KEEP_POLICY_PACKAGES:Ljava/util/Set;

    const-string v1, "com.sec.android.app.sbrowser"

    const-string v2, "com.sec.android.inputmethod"

    const-string v3, "com.sec.android.inputmethod.beta"

    const-string v4, "com.sec.android.inputmethod.iwnnime.japan"

    const-string v5, "com.microsoft.office.word"

    const-string v6, "com.microsoft.office.excel"

    const-string v7, "com.microsoft.office.powerpoint"

    const-string v8, "com.facebook.katana"

    .line 34
    invoke-static/range {v1 .. v8}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/DesktopModeKillPolicyManager;->KILL_POLICY_PACKAGES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dump(Landroid/util/IndentingPrintWriter;)V
    .registers 4

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/DesktopModeKillPolicyManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KEEP_POLICY_PACKAGES ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeKillPolicyManager;->KEEP_POLICY_PACKAGES:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KILL_POLICY_PACKAGES ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/desktopmode/DesktopModeKillPolicyManager;->KILL_POLICY_PACKAGES:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public static getDesktopModeKillPolicy()Landroid/os/Bundle;
    .registers 4

    .line 47
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "name"

    const-string v2, "DeX"

    .line 48
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    sget-object v1, Lcom/android/server/desktopmode/DesktopModeKillPolicyManager;->KILL_POLICY_PACKAGES:Ljava/util/Set;

    check-cast v1, Ljava/io/Serializable;

    const-string/jumbo v2, "kill_packages"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 50
    sget-object v1, Lcom/android/server/desktopmode/DesktopModeKillPolicyManager;->KEEP_POLICY_PACKAGES:Ljava/util/Set;

    check-cast v1, Ljava/io/Serializable;

    const-string/jumbo v2, "keep_packages"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string/jumbo v1, "skip_sdk_version_check"

    const/4 v2, 0x1

    .line 51
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 52
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_42

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeKillPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDesktopModeKillPolicy(), args="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    return-object v0
.end method
