.class public interface abstract Lcom/samsung/android/server/corescpm/ScpmApiContract;
.super Ljava/lang/Object;
.source "ScpmApiContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/corescpm/ScpmApiContract$Result;,
        Lcom/samsung/android/server/corescpm/ScpmApiContract$Method;,
        Lcom/samsung/android/server/corescpm/ScpmApiContract$Key;
    }
.end annotation


# static fields
.field public static final ACTION_CLEAR_DATA:Ljava/lang/String; = "com.samsung.android.scpm.policy.CLEAR_DATA"

.field public static final ACTION_LAZY_BOOT_COMPLETED:Ljava/lang/String; = "com.samsung.intent.action.LAZY_BOOT_COMPLETE"

.field public static final ACTION_PREFIX:Ljava/lang/String; = "com.samsung.android.scpm.policy.UPDATE."

.field public static final AUTHORITY:Ljava/lang/String; = "com.samsung.android.scpm.policy"

.field public static final URI:Landroid/net/Uri;

.field public static final URI_STRING:Ljava/lang/String; = "content://com.samsung.android.scpm.policy/"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "content://com.samsung.android.scpm.policy/"

    .line 36
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/corescpm/ScpmApiContract;->URI:Landroid/net/Uri;

    return-void
.end method
