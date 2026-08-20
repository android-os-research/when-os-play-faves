.class public final synthetic Lcom/samsung/android/server/wifi/util/ScanPool$CountryCodeHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic f$2:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/util/ScanPool$CountryCodeHelper$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p2, p0, Lcom/samsung/android/server/wifi/util/ScanPool$CountryCodeHelper$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p3, p0, Lcom/samsung/android/server/wifi/util/ScanPool$CountryCodeHelper$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/ScanPool$CountryCodeHelper$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/util/ScanPool$CountryCodeHelper$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/ScanPool$CountryCodeHelper$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/atomic/AtomicReference;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/samsung/android/server/wifi/util/ScanPool$CountryCodeHelper;->$r8$lambda$bpoES6Yfp_yc7jTQjWXjsmx2rMc(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method
