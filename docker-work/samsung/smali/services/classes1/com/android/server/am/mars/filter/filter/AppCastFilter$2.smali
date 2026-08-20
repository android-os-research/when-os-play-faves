.class public Lcom/android/server/am/mars/filter/filter/AppCastFilter$2;
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

    .line 75
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter$2;->this$0:Lcom/android/server/am/mars/filter/filter/AppCastFilter;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 3

    .line 78
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter$2;->this$0:Lcom/android/server/am/mars/filter/filter/AppCastFilter;

    invoke-static {}, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->-$$Nest$sfgetURI_APP_CAST_PACKAGE()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->-$$Nest$mgetValueFromSmartMirroring(Lcom/android/server/am/mars/filter/filter/AppCastFilter;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->-$$Nest$fputmAppCastPackage(Lcom/android/server/am/mars/filter/filter/AppCastFilter;Ljava/lang/String;)V

    return-void
.end method
