.class public final synthetic Lcom/android/server/am/CleanerAppManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;

    check-cast p2, Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;

    invoke-static {p1, p2}, Lcom/android/server/am/CleanerAppManager;->$r8$lambda$zzJY-Y-YUZZZ97SvGxsiSjVQe4k(Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;Lcom/android/server/am/CleanerAppManager$CleanerAppInfo;)I

    move-result p0

    return p0
.end method
