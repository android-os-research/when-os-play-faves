.class public Lcom/samsung/android/server/pm/user/BmodeUtils;
.super Ljava/lang/Object;
.source "BmodeUtils.java"


# static fields
.field public static final MAX_USER_PROP_KEY:Ljava/lang/String; = "persist.sys.max_users"

.field public static final SHOW_MUMUI_PROP_KEY:Ljava/lang/String; = "persist.sys.show_multiuserui"

.field public static final TAG:Ljava/lang/String; = "BmodeMigrationUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static restoreBmodeSettingsWhenUpgrading(ZLjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_48

    if-nez p1, :cond_5

    goto :goto_48

    :cond_5
    const/4 p0, 0x0

    .line 26
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 27
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isBMode()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x1

    :cond_1d
    const-string/jumbo p1, "persist.sys.show_multiuserui"

    const-string/jumbo v0, "persist.sys.max_users"

    const-string v1, "BmodeMigrationUtils"

    if-eqz p0, :cond_3b

    const-string p0, "Restore to bmode enabled configs"

    .line 39
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    .line 40
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "true"

    .line 41
    invoke-static {p1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_48

    :cond_3b
    const-string p0, "Clean up MUM configs"

    .line 43
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "null"

    .line 44
    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-static {p1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_48
    :goto_48
    return-void
.end method
