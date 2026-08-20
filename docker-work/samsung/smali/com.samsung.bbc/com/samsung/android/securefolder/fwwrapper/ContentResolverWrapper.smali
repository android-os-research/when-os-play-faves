.class public Lcom/samsung/android/securefolder/fwwrapper/ContentResolverWrapper;
.super Ljava/lang/Object;
.source "ContentResolverWrapper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerContentObserver(Landroid/content/ContentResolver;Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
    .registers 5

    .line 11
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method
