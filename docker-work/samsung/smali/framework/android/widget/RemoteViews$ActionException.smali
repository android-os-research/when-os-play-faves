.class public Landroid/widget/RemoteViews$ActionException;
.super Ljava/lang/RuntimeException;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionException"
.end annotation


# direct methods
.method public constructor whitelist <init>(Ljava/lang/Exception;)V
    .registers 2
    .param p1, "ex"    # Ljava/lang/Exception;

    .line 658
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 659
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 661
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 662
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 667
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 668
    return-void
.end method
