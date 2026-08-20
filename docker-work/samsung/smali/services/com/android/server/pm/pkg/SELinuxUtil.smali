.class public final Lcom/android/server/pm/pkg/SELinuxUtil;
.super Ljava/lang/Object;
.source "SELinuxUtil.java"


# static fields
.field public static final COMPLETE_STR:Ljava/lang/String; = ":complete"

.field public static final INSTANT_APP_STR:Ljava/lang/String; = ":ephemeralapp"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSeinfoUser(Lcom/android/server/pm/pkg/PackageUserState;)Ljava/lang/String;
    .registers 1

    .line 33
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p0, ":ephemeralapp:complete"

    return-object p0

    :cond_9
    const-string p0, ":complete"

    return-object p0
.end method
