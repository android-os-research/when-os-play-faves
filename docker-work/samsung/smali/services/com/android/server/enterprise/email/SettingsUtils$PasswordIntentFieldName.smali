.class public Lcom/android/server/enterprise/email/SettingsUtils$PasswordIntentFieldName;
.super Ljava/lang/Object;
.source "SettingsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/email/SettingsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PasswordIntentFieldName"
.end annotation


# static fields
.field public static final account_eas:Ljava/lang/String; = "eas_account"

.field public static final account_id:Ljava/lang/String; = "account_id"

.field public static final outgoing_user_passwd:Ljava/lang/String; = "outgoing_user_passwd"

.field public static final outgoing_user_passwd_id:Ljava/lang/String; = "outgoing_user_passwd_id"

.field public static final user_passwd:Ljava/lang/String; = "user_passwd"

.field public static final user_passwd_id:Ljava/lang/String; = "user_passwd_id"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 640
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
