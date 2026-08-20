.class public interface abstract Lcom/samsung/android/server/audio/ScpmApiContract;
.super Ljava/lang/Object;
.source "SoundAppPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/audio/ScpmApiContract$Result;,
        Lcom/samsung/android/server/audio/ScpmApiContract$Method;,
        Lcom/samsung/android/server/audio/ScpmApiContract$Key;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.samsung.android.scpm.policy"

.field public static final URI:Landroid/net/Uri;

.field public static final URI_STRING:Ljava/lang/String; = "content://com.samsung.android.scpm.policy/"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "content://com.samsung.android.scpm.policy/"

    .line 311
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/audio/ScpmApiContract;->URI:Landroid/net/Uri;

    return-void
.end method
