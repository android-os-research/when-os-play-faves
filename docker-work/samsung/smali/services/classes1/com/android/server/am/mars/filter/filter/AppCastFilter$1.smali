.class public Lcom/android/server/am/mars/filter/filter/AppCastFilter$1;
.super Landroid/database/ContentObserver;
.source "AppCastFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/mars/filter/filter/AppCastFilter;->registerContentObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/mars/filter/filter/AppCastFilter;


# direct methods
.method public constructor <init>(Lcom/android/server/am/mars/filter/filter/AppCastFilter;Landroid/os/Handler;)V
    .registers 3

    .line 62
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/AppCastFilter;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 3

    .line 65
    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/AppCastFilter;

    invoke-static {}, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->-$$Nest$sfgetURI_APP_CAST_ENABLED()Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->-$$Nest$mgetValueFromSmartMirroring(Lcom/android/server/am/mars/filter/filter/AppCastFilter;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 67
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/AppCastFilter;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->-$$Nest$fputmIsAppCastEnabled(Lcom/android/server/am/mars/filter/filter/AppCastFilter;Z)V

    :cond_15
    return-void
.end method
