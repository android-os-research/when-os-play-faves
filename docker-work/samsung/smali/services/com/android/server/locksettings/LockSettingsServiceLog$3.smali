.class public Lcom/android/server/locksettings/LockSettingsServiceLog$3;
.super Ljava/lang/Object;
.source "LockSettingsServiceLog.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/locksettings/LockSettingsServiceLog;->migrateLssLog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/locksettings/LockSettingsServiceLog;

.field public final synthetic val$debug:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/locksettings/LockSettingsServiceLog;Ljava/lang/String;)V
    .registers 3

    .line 393
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$3;->this$0:Lcom/android/server/locksettings/LockSettingsServiceLog;

    iput-object p2, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$3;->val$debug:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 3

    const-string p1, "LockSettingsLog"

    .line 395
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1a

    const-string p1, ".zip"

    .line 396
    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_18

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$3;->val$debug:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1a

    :cond_18
    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method
