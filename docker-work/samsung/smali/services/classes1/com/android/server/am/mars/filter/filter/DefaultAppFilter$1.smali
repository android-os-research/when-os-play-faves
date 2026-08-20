.class public Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$1;
.super Landroid/database/ContentObserver;
.source "DefaultAppFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->registerDefaultIMEContentObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;


# direct methods
.method public constructor <init>(Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;Landroid/os/Handler;)V
    .registers 3

    .line 169
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 3

    .line 172
    sget-boolean p1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FILTER:Z

    if-eqz p1, :cond_10

    .line 173
    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    invoke-static {p1}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->-$$Nest$fgetTAG(Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "onChange - DEFAULT_INPUT_METHOD!"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_10
    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    invoke-static {p1}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->-$$Nest$fgetmContext(Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getUserId()I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->-$$Nest$mgetDefaultIMEPackage(Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;I)V

    .line 177
    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    invoke-static {p1}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->-$$Nest$fgetmContext(Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p1

    if-nez p1, :cond_4e

    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    invoke-static {p1}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->-$$Nest$fgetmSecureFolderEnabled(Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;)Z

    move-result p1

    if-eqz p1, :cond_4e

    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    invoke-static {p1}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->-$$Nest$fgetmSecureFolderUserId(Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;)I

    move-result p1

    const/16 p2, 0x96

    if-lt p1, p2, :cond_4e

    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    invoke-static {p1}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->-$$Nest$fgetmSecureFolderUserId(Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;)I

    move-result p1

    const/16 p2, 0xa0

    if-gt p1, p2, :cond_4e

    .line 180
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    invoke-static {p0}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->-$$Nest$fgetmSecureFolderUserId(Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->-$$Nest$mgetDefaultIMEPackage(Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;I)V

    :cond_4e
    return-void
.end method
