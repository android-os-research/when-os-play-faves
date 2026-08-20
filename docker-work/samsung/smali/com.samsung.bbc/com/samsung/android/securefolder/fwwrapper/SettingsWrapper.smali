.class public Lcom/samsung/android/securefolder/fwwrapper/SettingsWrapper;
.super Ljava/lang/Object;
.source "SettingsWrapper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;IILjava/lang/String;)I
    .registers 6

    const-string v0, "system"

    .line 10
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 11
    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    goto :goto_1b

    :cond_d
    const-string v0, "secure"

    .line 12
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1a

    .line 13
    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    goto :goto_1b

    :cond_1a
    const/4 p0, -0x1

    :goto_1b
    return p0
.end method

.method public static getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;ILjava/lang/String;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    const-string v0, "system"

    .line 20
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 21
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    goto :goto_1b

    :cond_d
    const-string v0, "secure"

    .line 22
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1a

    .line 23
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    goto :goto_1b

    :cond_1a
    const/4 p0, -0x1

    :goto_1b
    return p0
.end method

.method public static getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "system"

    .line 40
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 41
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1b

    :cond_d
    const-string v0, "secure"

    .line 42
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1a

    .line 43
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return-object p0
.end method

.method public static putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;IILjava/lang/String;)Z
    .registers 6

    const-string v0, "system"

    .line 30
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 31
    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result p0

    goto :goto_1b

    :cond_d
    const-string v0, "secure"

    .line 32
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1a

    .line 33
    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result p0

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public static putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .registers 6

    const-string v0, "system"

    .line 50
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 51
    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    goto :goto_1b

    :cond_d
    const-string v0, "secure"

    .line 52
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1a

    .line 53
    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method
