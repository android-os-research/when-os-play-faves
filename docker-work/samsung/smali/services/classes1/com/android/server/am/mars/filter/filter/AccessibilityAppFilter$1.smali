.class public Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter$1;
.super Landroid/database/ContentObserver;
.source "AccessibilityAppFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->registerContentObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;


# direct methods
.method public constructor <init>(Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;Landroid/os/Handler;)V
    .registers 3

    .line 110
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 3

    .line 113
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;

    invoke-static {p0}, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->-$$Nest$mgetEnabledAccessibilityPackage(Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;)V

    return-void
.end method
