.class interface abstract Lcom/samsung/android/scloud/lib/platform/api/ScpmApiContract;
.super Ljava/lang/Object;
.source "ScpmApiContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/scloud/lib/platform/api/ScpmApiContract$Method;,
        Lcom/samsung/android/scloud/lib/platform/api/ScpmApiContract$Key;,
        Lcom/samsung/android/scloud/lib/platform/api/ScpmApiContract$Meta;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.samsung.android.scpm.policy"

.field public static final SCPM_V1:Ljava/lang/String; = "com.samsung.android.sm.policy"

.field public static final SCPM_V2:Ljava/lang/String; = "com.samsung.android.scpm"

.field public static final URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 10
    const-string v0, "content://com.samsung.android.scpm.policy/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/scloud/lib/platform/api/ScpmApiContract;->URI:Landroid/net/Uri;

    return-void
.end method
