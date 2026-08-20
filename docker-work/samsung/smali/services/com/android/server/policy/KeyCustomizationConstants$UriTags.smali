.class public Lcom/android/server/policy/KeyCustomizationConstants$UriTags;
.super Ljava/lang/Object;
.source "KeyCustomizationConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/KeyCustomizationConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UriTags"
.end annotation


# static fields
.field public static final DICTATION:Landroid/net/Uri;

.field public static final SAMSUNG_PAY:Ljava/lang/String; = "samsungpay://simplepay/sidekey"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "content://com.samsung.android.honeyboard.DictationProvider"

    .line 264
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/KeyCustomizationConstants$UriTags;->DICTATION:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
