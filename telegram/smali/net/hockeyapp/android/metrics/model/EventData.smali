.class public Lnet/hockeyapp/android/metrics/model/EventData;
.super Lnet/hockeyapp/android/metrics/model/TelemetryData;
.source "EventData.java"


# instance fields
.field private measurements:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ver:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lnet/hockeyapp/android/metrics/model/TelemetryData;-><init>()V

    .line 20
    const/4 v0, 0x2

    iput v0, p0, Lnet/hockeyapp/android/metrics/model/EventData;->ver:I

    .line 41
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/model/EventData;->InitializeFields()V

    .line 42
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/model/EventData;->SetupAttributes()V

    .line 43
    return-void
.end method


# virtual methods
.method protected InitializeFields()V
    .locals 1

    .prologue
    .line 161
    const-string/jumbo v0, "com.microsoft.applicationinsights.contracts.EventData"

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/model/EventData;->QualifiedName:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public SetupAttributes()V
    .locals 0

    .prologue
    .line 155
    return-void
.end method

.method public getBaseType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string/jumbo v0, "EventData"

    return-object v0
.end method

.method public getEnvelopeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const-string/jumbo v0, "Microsoft.ApplicationInsights.Event"

    return-object v0
.end method

.method public getMeasurements()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/EventData;->measurements:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/model/EventData;->measurements:Ljava/util/Map;

    .line 111
    :cond_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/EventData;->measurements:Ljava/util/Map;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/EventData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/EventData;->properties:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/model/EventData;->properties:Ljava/util/Map;

    .line 94
    :cond_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/EventData;->properties:Ljava/util/Map;

    return-object v0
.end method

.method public getVer()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lnet/hockeyapp/android/metrics/model/EventData;->ver:I

    return v0
.end method

.method protected serializeContent(Ljava/io/Writer;)Ljava/lang/String;
    .locals 3
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-super {p0, p1}, Lnet/hockeyapp/android/metrics/model/TelemetryData;->serializeContent(Ljava/io/Writer;)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "prefix":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"ver\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 129
    iget v1, p0, Lnet/hockeyapp/android/metrics/model/EventData;->ver:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 130
    const-string/jumbo v0, ","

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"name\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/EventData;->name:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 134
    const-string/jumbo v0, ","

    .line 136
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/EventData;->properties:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"properties\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/EventData;->properties:Ljava/util/Map;

    invoke-static {p1, v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->writeDictionary(Ljava/io/Writer;Ljava/util/Map;)V

    .line 139
    const-string/jumbo v0, ","

    .line 142
    :cond_0
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/EventData;->measurements:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"measurements\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 144
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/EventData;->measurements:Ljava/util/Map;

    invoke-static {p1, v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->writeDictionary(Ljava/io/Writer;Ljava/util/Map;)V

    .line 145
    const-string/jumbo v0, ","

    .line 148
    :cond_1
    return-object v0
.end method

.method public setMeasurements(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "value":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Double;>;"
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/EventData;->measurements:Ljava/util/Map;

    .line 119
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/EventData;->name:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setProperties(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p1, "value":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/EventData;->properties:Ljava/util/Map;

    .line 102
    return-void
.end method

.method public setVer(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 70
    iput p1, p0, Lnet/hockeyapp/android/metrics/model/EventData;->ver:I

    .line 71
    return-void
.end method
