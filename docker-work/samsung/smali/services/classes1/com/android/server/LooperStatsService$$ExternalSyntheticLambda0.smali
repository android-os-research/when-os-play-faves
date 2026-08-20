.class public final synthetic Lcom/android/server/LooperStatsService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/android/internal/os/LooperStats$ExportedEntry;

    invoke-static {p1}, Lcom/android/server/LooperStatsService;->$r8$lambda$5ecgqHRbWuuLW-n1YS6qkJxobSc(Lcom/android/internal/os/LooperStats$ExportedEntry;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
