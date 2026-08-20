.class public Landroid/text/LoginFilter$UsernameFilterGMail;
.super Landroid/text/LoginFilter;
.source "LoginFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/LoginFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UsernameFilterGMail"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 142
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/text/LoginFilter;-><init>(Z)V

    .line 143
    return-void
.end method

.method public constructor whitelist <init>(Z)V
    .registers 2
    .param p1, "appendInvalid"    # Z

    .line 146
    invoke-direct {p0, p1}, Landroid/text/LoginFilter;-><init>(Z)V

    .line 147
    return-void
.end method


# virtual methods
.method public whitelist isAllowed(C)Z
    .registers 4
    .param p1, "c"    # C

    .line 152
    const/4 v0, 0x1

    const/16 v1, 0x30

    if-gt v1, p1, :cond_a

    const/16 v1, 0x39

    if-gt p1, v1, :cond_a

    .line 153
    return v0

    .line 154
    :cond_a
    const/16 v1, 0x61

    if-gt v1, p1, :cond_13

    const/16 v1, 0x7a

    if-gt p1, v1, :cond_13

    .line 155
    return v0

    .line 156
    :cond_13
    const/16 v1, 0x41

    if-gt v1, p1, :cond_1c

    const/16 v1, 0x5a

    if-gt p1, v1, :cond_1c

    .line 157
    return v0

    .line 158
    :cond_1c
    const/16 v1, 0x2e

    if-ne v1, p1, :cond_21

    .line 159
    return v0

    .line 160
    :cond_21
    const/4 v0, 0x0

    return v0
.end method
