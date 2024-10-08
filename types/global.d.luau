type EventConnectionMetatable<N = string, T = (...any) -> ()> = { Unbind: (self: EventConnection<N, T>) -> (), __index: EventConnectionMetatable<N, T>, Disconnect: (self: EventConnection<N, T>) -> (), __mode: "v" }
type TerrainDataRange = { number }
type RingData = { RingsAmount: number, RingsEnd: number, RingsType: string, RingStart: number }
type JSON = { [JSONValue]: JSON } | JSONValue
type TerrainData = { TreeSettings: TreeData, WaterLevel: number, Slopes: TerrainDataRange, Life: boolean, Water: boolean, Temperature: TerrainDataRange, Height: TerrainDataRange, RockDensity: TerrainDataRange, MountainDensity: TerrainDataRange, Roughness: TerrainDataRange }
type TreeData = { branch_size_percentage: { max: TreeDataRange, min: TreeDataRange }, branch_angles: TerrainDataRange, trunk_size: { max: TreeDataRange, min: TreeDataRange }, branch_offset: TerrainDataRange, amount_of_branches: TerrainDataRange, amount_of_splits: TerrainDataRange }
type JSONValue = string | number | boolean | buffer
type RegionColor = { R: number, G: number, B: number }
type TreeDataRange = { height: number, width: number }
type RegionEnterLocation = { Y: number, X: number, Z: number }
type MethodParameter = { Type: string?, Description: string?, Name: string? }
type primitive = string | number | boolean | { primitive } | { [primitive]: primitive }
type _GetPartsFromPort<T, U> = (port: (number | Port)?, object: T) -> { U }
type _GetPart<T, U> = (object: T) -> U?
type _GetPartFromPort<T, U> = (port: (number | Port)?, object: T) -> U?
type _GetParts<T, U> = (object: T) -> { U }
type _CreateElement<T, V> = (self: Screen, className: T, properties: InstanceProperties & { [string]: any }) -> V

export type FileSystemFileNode = FileSystemDirectory | FileSystemFile | FileSystemLink | FileSystemRoot | FileSystemDevice
export type ObjectDetectorHitData = { Durability: number, [string]: any, Name: string, Position: Vector3, Color: Color3, Distance: number, isTerrain: boolean, CreatedBy: number }
export type FileSystemDirectory = { kind: "directory", attributes: FileAttributes?, contents: { [string]: FileSystemFileNode } }
export type ConfigurableData = { Type: string, Description: string, Options: ({ string } | { number })?, DefaultValue: any?, Name: string }
export type InstrumentType = "Speed" | "AngularSpeed" | "Temperature" | "Time" | "Power" | "Size" | "Position" | "TemperatureF" | "Orientation" | "TemperatureC" | "AirTemperatureF" | "AirTemperatureC"
export type FileSystemOperationOptions = { ignorePermissions: boolean?, ignoreLinks: boolean? }
export type EventConnection<N = string, T = (...any) -> ()> = typeof(setmetatable({} :: { Callback: T, _eventName: N }, {} :: EventConnectionMetatable<N, T>))
export type SpaceRegionInfo = { RegionType: "Space" } & PlayableRegionInfo
export type BlackHoleRegionInfo = { StarSize: nil, BlackHoleSize: number, EnterLocation: RegionEnterLocation, StarType: nil, PlanetData: nil } & PlayableRegionInfo
export type EventData = { string }
export type RegionLogType = "HyperDrive" | "Aliens" | "Spawned" | "Death" | "ExitRegion" | "Poison" | "Irradiated" | "Suffocating" | "Freezing" | "Melting"
export type MethodData = { Name: string, Arguments: { MethodParameter }, Description: string?, Results: { MethodParameter } }
export type CanvasContext = "2D" | "3D"
export type RegionLog = { TimeAgo: number, Event: RegionLogType, Desc: string }
export type RegionInfo = { BeaconCount: number, Type: "Planet", Name: string, HasRings: boolean, SubType: nil, TidallyLocked: boolean } | { HasAtmosphere: boolean, Type: "Planet", Color: Color3, Gravity: number, SubType: PlanetType, BeaconCount: number, Name: string, Resources: { string }, TidallyLocked: boolean, HasRings: boolean } | { BeaconCount: number, Type: "BlackHole", Name: string, Size: number } | { BeaconCount: number, Type: "Star", Name: string, SubType: StarType, Size: number }
export type FilePermissions = { write: boolean?, read: boolean? }
export type RawFileSystem = { SYSTEM_READONLY: FileAttributes, Directory: (contents: { [string]: FileSystemFileNode }, attributes: FileAttributes, readonly: boolean?) -> FileSystemDirectory, write: (self: RawFileSystem, root: FileSystemRoot, pathname: string, node: FileSystemFileNode, options: FileSystemOperationOptions?) -> (), Link: (pathname: string, attributes: FileAttributes) -> FileSystemLink, Device: (device: any, attributes: FileAttributes) -> FileSystemDevice, SYSTEM_NOACCESS: FileAttributes, read: (self: RawFileSystem, root: FileSystemRoot, pathname: string, options: FileSystemOperationOptions?) -> FileSystemFileNode?, readlink: (self: RawFileSystem, root: FileSystemRoot, link: FileSystemLink, options: FileSystemOperationOptions?) -> FileSystemFileNode?, File: (contents: string, attributes: FileAttributes) -> FileSystemFile, Root: (root: FileSystemDirectory, attributes: FileAttributes) -> FileSystemRoot }
export type VehicleSeatMode = "Horizontal" | "Full" | "Mouse"
export type PolysiliconMode = "Activate" | "Deactivate" | "FlipFlop"
export type Cursor = { Y: number, Player: string, X: number, UserId: number, Pressed: boolean }
export type FileSystemLink = { target: string, kind: "link", attributes: FileAttributes? }
export type FileSystemDevice = { device: any, kind: "device", attributes: FileAttributes? }
export type FileSystemFile = { kind: "file", attributes: FileAttributes?, contents: string }
export type PlayableRegionInfo = { Name: string, EnterLocation: RegionEnterLocation, Coordinate: { InPlanet: boolean }, StringCoordinate: string, RegionServer: string, RegionSeed: number }
export type StarRegionInfo = { StarSize: number, BlackHoleSize: nil, EnterLocation: RegionEnterLocation, StarType: StarType, PlanetData: nil } & PlayableRegionInfo
export type CompleteRegionInfo = OrbitRegionInfo | SpaceRegionInfo | BlackHoleRegionInfo | StarRegionInfo | PlanetRegionInfo
export type Event<N = string, T = (...any) -> (), U... = ...any> = { _eventName: N, Connect: (self: Event<N, T, U...>, callback: T) -> EventConnection<N, T> }
export type TemperatureUnit = "K" | "F" | "C"
export type OrbitRegionInfo = { OrbitBody: BlackHoleRegionInfo | StarRegionInfo | PlanetRegionInfo, RegionType: "Orbit" } & PlayableRegionInfo
export type FileSystem = { split: (pathname: string) -> { string }, copy: (self: FileSystem, pathnameFrom: string, pathnameTo: string?) -> (), filename: (pathname: string) -> string, pwd: (self: FileSystem) -> string, readdir: (self: FileSystem, pathname: string) -> { string }, chdir: (self: FileSystem, pathname: string) -> string, new: (source: (FileSystemRoot | FileSystemDirectory)?) -> FileSystem, writefile: (self: FileSystem, filepath: string, contents: string) -> (), unlink: (self: FileSystem, pathname: string) -> (), separator: string, parentdir: (pathname: string) -> string, moveMerge: (self: FileSystem, pathnameFrom: string, pathnameTo: string?) -> (), readfile: (self: FileSystem, filepath: string) -> string, exists: (pathname: string) -> boolean, join: (...string) -> string, mklink: (self: FileSystem, linkName: string, targetName: string?) -> (), resolve: (pathname: string) -> string, rename: (self: FileSystem, pathnameFrom: string, pathnameTo: string?) -> (), mkdir: (self: FileSystem, pathname: string?) -> () }
export type FileSystemRoot = { pwd: string, kind: "root", attributes: FileAttributes?, root: FileSystemDirectory }
export type ModemRequest = { Method: ("GET" | "POST" | "PUSH" | "PATCH" | "DELETE")?, Compress: Enum.HttpCompression?, Url: string, Headers: { [string]: any }?, Body: string? }
export type CoordinateMetatable = { type: "Coordinate", __eq: (Coordinate) -> Coordinate, GetSeed: (self: Coordinate, arg2: any) -> number, __tostring: (Coordinate) -> string, __add: (Coordinate) -> Coordinate, ToArray: (self: Coordinate, arg2: any) -> {number | boolean}, Clone: (self: Coordinate) -> (), GetRandom: (self: Coordinate, arg2: any) -> Random, __mul: (Coordinate) -> Coordinate, CoordStringWithoutPlanet: (self: Coordinate, arg1: any) -> string, __index: CoordinateMetatable, __div: (Coordinate) -> Coordinate }
export type FileAttributes = { permissions: ({ userPermissions: { [number]: FilePermissions }?, owner: "system" | number } & FilePermissions)?, metadata: { [primitive]: primitive }? }
export type StarType = "Red" | "Orange" | "Yellow" | "Blue" | "Neutron"
export type Permission = "Modify" | "Unlock" | "Paint" | "Configure" | "Interact" | "Attach"
export type PlanetType = "Desert" | "Terra" | "EarthLike" | "Ocean" | "Tundra" | "Forest" | "Exotic" | "Barren" | "Gas" | "RobotDepot" | "RobotFactory"
export type Coordinate = typeof(setmetatable({} :: { InPlanet: boolean, SolarCoordinates: Vector2, UniverseCoordinates: Vector2, }, {} :: CoordinateMetatable))
export type ModemRequestResponse = { StatusMessage: string, Success: boolean, StatusCode: number, Headers: { [string]: any }, Body: any }
export type CelestialBodyType = "Planet" | "BlackHole" | "Star"
export type PlanetRegionInfo = { StarSize: nil, BlackHoleSize: nil, StarType: nil, PlanetData: { DayCycleIncrement: number, EnterLocation: RegionEnterLocation, PrimaryColor: RegionColor, Gravity: number, TerrainConfig: TerrainData, GenerationHeightScale: number, Temperature: number, Rings: RingData?, PlanetType: PlanetType, StartingTime: number, Atmosphere: boolean, Resources: { string }, SecondaryColor: RegionColor, PlanetMaterial: string } } & PlayableRegionInfo
export type Vector3ValueProperties = { Value: Vector3? } & InstanceProperties
export type AccoutrementProperties = { AttachmentPoint: CFrame? } & InstanceProperties
export type VectorForceProperties = { ApplyAtCenterOfMass: boolean?, Force: Vector3?, RelativeTo: Enum.ActuatorRelativeTo? } & ConstraintProperties
export type HandlesProperties = { Faces: Faces?, Style: Enum.HandlesStyle? } & PartAdornmentProperties
export type UIScaleProperties = { Scale: number? } & InstanceProperties
export type CFrameValueProperties = { Value: CFrame? } & InstanceProperties
export type ImageLabelProperties = { Image: string?, ImageColor3: Color3?, ImageRectOffset: Vector2?, ImageRectSize: Vector2?, ImageTransparency: number?, ResampleMode: Enum.ResamplerMode?, ScaleType: Enum.ScaleType?, SliceCenter: Rect?, SliceScale: number?, TileSize: UDim2? } & GuiObjectProperties
export type UIListLayoutProperties = { HorizontalFlex: Enum.UIFlexAlignment?, ItemLineAlignment: Enum.ItemLineAlignment?, Padding: UDim?, VerticalFlex: Enum.UIFlexAlignment?, Wraps: boolean? } & UIGridStyleLayoutProperties
export type AudioReverbProperties = { Bypass: boolean?, DecayRatio: number?, DecayTime: number?, Density: number?, Diffusion: number?, DryLevel: number?, EarlyDelayTime: number?, HighCutFrequency: number?, LateDelayTime: number?, LowShelfFrequency: number?, LowShelfGain: number?, ReferenceFrequency: number?, WetLevel: number? } & InstanceProperties
export type RenderingTestProperties = { CFrame: CFrame?, ComparisonDiffThreshold: number?, ComparisonMethod: Enum.RenderingTestComparisonMethod?, ComparisonPsnrThreshold: number?, Description: string?, FieldOfView: number?, PerfTest: boolean?, QualityAuto: boolean?, QualityLevel: number?, RenderingTestFrameCount: number?, ShouldSkip: boolean?, Ticket: string?, Timeout: number? } & InstanceProperties
export type BillboardGuiProperties = { Active: boolean?, Adornee: Instance?, AlwaysOnTop: boolean?, Brightness: number?, ClipsDescendants: boolean?, DistanceLowerLimit: number?, DistanceStep: number?, DistanceUpperLimit: number?, ExtentsOffset: Vector3?, ExtentsOffsetWorldSpace: Vector3?, LightInfluence: number?, MaxDistance: number?, PlayerToHideFrom: Instance?, Size: UDim2?, SizeOffset: Vector2?, StudsOffset: Vector3?, StudsOffsetWorldSpace: Vector3? } & LayerCollectorProperties
export type AudioListenerProperties = { AudioInteractionGroup: string? } & InstanceProperties
export type TeamProperties = { AutoAssignable: boolean?, TeamColor: BrickColor? } & InstanceProperties
export type FlangeSoundEffectProperties = { Depth: number?, Mix: number?, Rate: number? } & SoundEffectProperties
export type ControllerManagerProperties = { ActiveController: ControllerBase?, BaseMoveSpeed: number?, BaseTurnSpeed: number?, ClimbSensor: ControllerSensor?, FacingDirection: Vector3?, GroundSensor: ControllerSensor?, MovingDirection: Vector3?, RootPart: BasePart?, UpDirection: Vector3? } & InstanceProperties
export type SpecialMeshProperties = { MeshType: Enum.MeshType? } & FileMeshProperties
export type WeldConstraintProperties = { Enabled: boolean?, Part0: BasePart?, Part1: BasePart? } & InstanceProperties
export type ExplosionProperties = { BlastPressure: number?, BlastRadius: number?, DestroyJointRadiusPercent: number?, ExplosionType: Enum.ExplosionType?, Position: Vector3?, TimeScale: number?, Visible: boolean? } & InstanceProperties
export type TextLabelProperties = { FontFace: Font?, LineHeight: number?, MaxVisibleGraphemes: number?, OpenTypeFeatures: string?, RichText: boolean?, Text: string?, TextColor3: Color3?, TextDirection: Enum.TextDirection?, TextScaled: boolean?, TextSize: number?, TextStrokeColor3: Color3?, TextStrokeTransparency: number?, TextTransparency: number?, TextTruncate: Enum.TextTruncate?, TextWrapped: boolean?, TextXAlignment: Enum.TextXAlignment?, TextYAlignment: Enum.TextYAlignment? } & GuiObjectProperties
export type AudioDeviceInputProperties = { AccessType: Enum.AccessModifierType?, Muted: boolean?, Player: Player?, Volume: number? } & InstanceProperties
export type ImageHandleAdornmentProperties = { Image: string?, Size: Vector2? } & HandleAdornmentProperties
export type AudioPitchShifterProperties = { Bypass: boolean?, Pitch: number? } & InstanceProperties
export type ColorCorrectionEffectProperties = { Brightness: number?, Contrast: number?, Saturation: number?, TintColor: Color3? } & PostEffectProperties
export type HapticEffectProperties = { Looped: boolean?, Type: Enum.HapticEffectType? } & InstanceProperties
export type RopeConstraintProperties = { Length: number?, Restitution: number?, Thickness: number?, WinchEnabled: boolean?, WinchForce: number?, WinchResponsiveness: number?, WinchSpeed: number?, WinchTarget: number? } & ConstraintProperties
export type SelectionBoxProperties = { LineThickness: number?, SurfaceColor3: Color3?, SurfaceTransparency: number? } & InstanceAdornmentProperties
export type MotorProperties = { CurrentAngle: number?, DesiredAngle: number?, MaxVelocity: number? } & JointInstanceProperties
export type TremoloSoundEffectProperties = { Depth: number?, Duty: number?, Frequency: number? } & SoundEffectProperties
export type PoseProperties = { CFrame: CFrame? } & PoseBaseProperties
export type PathfindingLinkProperties = { Attachment0: Attachment?, Attachment1: Attachment?, IsBidirectional: boolean?, Label: string? } & InstanceProperties
export type CylinderHandleAdornmentProperties = { Angle: number?, Height: number?, InnerRadius: number?, Radius: number? } & HandleAdornmentProperties
export type EulerRotationCurveProperties = { RotationOrder: Enum.RotationOrder? } & InstanceProperties
export type AttachmentProperties = { Axis: Vector3?, CFrame: CFrame?, SecondaryAxis: Vector3?, Visible: boolean?, WorldAxis: Vector3?, WorldCFrame: CFrame?, WorldSecondaryAxis: Vector3? } & InstanceProperties
export type AudioEmitterProperties = { AudioInteractionGroup: string? } & InstanceProperties
export type AudioDeviceOutputProperties = { Player: Player? } & InstanceProperties
export type ImageButtonProperties = { HoverImage: string?, Image: string?, ImageColor3: Color3?, ImageRectOffset: Vector2?, ImageRectSize: Vector2?, ImageTransparency: number?, PressedImage: string?, ResampleMode: Enum.ResamplerMode?, ScaleType: Enum.ScaleType?, SliceCenter: Rect?, SliceScale: number?, TileSize: UDim2? } & GuiButtonProperties
export type UIDragDetectorProperties = { ActivatedCursorIcon: string?, BoundingBehavior: Enum.UIDragDetectorBoundingBehavior?, BoundingUI: GuiBase2d?, CursorIcon: string?, DragAxis: Vector2?, DragRelativity: Enum.UIDragDetectorDragRelativity?, DragRotation: number?, DragSpace: Enum.UIDragDetectorDragSpace?, DragStyle: Enum.UIDragDetectorDragStyle?, DragUDim2: UDim2?, Enabled: boolean?, MaxDragAngle: number?, MaxDragTranslation: UDim2?, MinDragAngle: number?, MinDragTranslation: UDim2?, ReferenceUIInstance: GuiObject?, ResponseStyle: Enum.UIDragDetectorResponseStyle?, SelectionModeDragSpeed: UDim2?, SelectionModeRotateSpeed: number?, UIDragSpeedAxisMapping: Enum.UIDragSpeedAxisMapping? } & InstanceProperties
export type CylindricalConstraintProperties = { AngularActuatorType: Enum.ActuatorType?, AngularLimitsEnabled: boolean?, AngularResponsiveness: number?, AngularRestitution: number?, AngularSpeed: number?, AngularVelocity: number?, InclinationAngle: number?, LowerAngle: number?, MotorMaxAngularAcceleration: number?, MotorMaxTorque: number?, RotationAxisVisible: boolean?, ServoMaxTorque: number?, TargetAngle: number?, UpperAngle: number? } & SlidingBallConstraintProperties
export type WireframeHandleAdornmentProperties = { Scale: Vector3? } & HandleAdornmentProperties
export type AccessoryProperties = { AccessoryType: Enum.AccessoryType? } & AccoutrementProperties
export type LineForceProperties = { ApplyAtCenterOfMass: boolean?, InverseSquareLaw: boolean?, Magnitude: number?, MaxForce: number?, ReactionForceEnabled: boolean? } & ConstraintProperties
export type SurfaceSelectionProperties = { TargetSurface: Enum.NormalId? } & PartAdornmentProperties
export type ArcHandlesProperties = { Axes: Axes? } & PartAdornmentProperties
export type EditableMeshProperties = { SkinningEnabled: boolean? } & DataModelMeshProperties
export type TextButtonProperties = { FontFace: Font?, LineHeight: number?, MaxVisibleGraphemes: number?, OpenTypeFeatures: string?, RichText: boolean?, Text: string?, TextColor3: Color3?, TextDirection: Enum.TextDirection?, TextScaled: boolean?, TextSize: number?, TextStrokeColor3: Color3?, TextStrokeTransparency: number?, TextTransparency: number?, TextTruncate: Enum.TextTruncate?, TextWrapped: boolean?, TextXAlignment: Enum.TextXAlignment?, TextYAlignment: Enum.TextYAlignment? } & GuiButtonProperties
export type ViewportFrameProperties = { Ambient: Color3?, CurrentCamera: Camera?, ImageColor3: Color3?, ImageTransparency: number?, LightColor: Color3?, LightDirection: Vector3? } & GuiObjectProperties
export type DialogProperties = { BehaviorType: Enum.DialogBehaviorType?, ConversationDistance: number?, GoodbyeChoiceActive: boolean?, GoodbyeDialog: string?, InUse: boolean?, InitialPrompt: string?, Purpose: Enum.DialogPurpose?, Tone: Enum.DialogTone?, TriggerDistance: number?, TriggerOffset: Vector3? } & InstanceProperties
export type CloudsProperties = { Color: Color3?, Cover: number?, Density: number?, Enabled: boolean? } & InstanceProperties
export type SeatProperties = { Disabled: boolean? } & PartProperties
export type EditableImageProperties = { Size: Vector2? } & InstanceProperties
export type ParticleEmitterProperties = { Acceleration: Vector3?, Brightness: number?, Color: ColorSequence?, Drag: number?, EmissionDirection: Enum.NormalId?, Enabled: boolean?, FlipbookFramerate: NumberRange?, FlipbookIncompatible: string?, FlipbookLayout: Enum.ParticleFlipbookLayout?, FlipbookMode: Enum.ParticleFlipbookMode?, FlipbookStartRandom: boolean?, Lifetime: NumberRange?, LightEmission: number?, LightInfluence: number?, LockedToPart: boolean?, Orientation: Enum.ParticleOrientation?, Rate: number?, RotSpeed: NumberRange?, Rotation: NumberRange?, Shape: Enum.ParticleEmitterShape?, ShapeInOut: Enum.ParticleEmitterShapeInOut?, ShapePartial: number?, ShapeStyle: Enum.ParticleEmitterShapeStyle?, Size: NumberSequence?, Speed: NumberRange?, SpreadAngle: Vector2?, Squash: NumberSequence?, Texture: string?, TimeScale: number?, Transparency: NumberSequence?, VelocityInheritance: number?, WindAffectsDrag: boolean?, ZOffset: number? } & InstanceProperties
export type SkyProperties = { CelestialBodiesShown: boolean?, MoonAngularSize: number?, MoonTextureId: string?, SkyboxBk: string?, SkyboxDn: string?, SkyboxFt: string?, SkyboxLf: string?, SkyboxRt: string?, SkyboxUp: string?, StarCount: number?, SunAngularSize: number?, SunTextureId: string? } & InstanceProperties
export type SelectionSphereProperties = { SurfaceColor3: Color3?, SurfaceTransparency: number? } & PVAdornmentProperties
export type TrussPartProperties = { Style: Enum.Style? } & BasePartProperties
export type ControllerPartSensorProperties = { HitFrame: CFrame?, HitNormal: Vector3?, SearchDistance: number?, SensedPart: BasePart?, SensorMode: Enum.SensorMode? } & SensorBaseProperties
export type TorsionSpringConstraintProperties = { Coils: number?, Damping: number?, LimitsEnabled: boolean?, MaxAngle: number?, MaxTorque: number?, Radius: number?, Restitution: number?, Stiffness: number? } & ConstraintProperties
export type FireProperties = { Color: Color3?, Enabled: boolean?, Heat: number?, SecondaryColor: Color3?, Size: number?, TimeScale: number? } & InstanceProperties
export type BoolValueProperties = { Value: boolean? } & InstanceProperties
export type AudioAnalyzerProperties = { SpectrumEnabled: boolean? } & InstanceProperties
export type ClickDetectorProperties = { CursorIcon: string?, MaxActivationDistance: number? } & InstanceProperties
export type SurfaceLightProperties = { Angle: number?, Face: Enum.NormalId?, Range: number? } & LightProperties
export type KeyframeProperties = { Time: number? } & InstanceProperties
export type ShirtGraphicProperties = { Color3: Color3?, Graphic: string? } & InstanceProperties
export type LocalizationTableProperties = { SourceLocaleId: string? } & InstanceProperties
export type BrickColorValueProperties = { Value: BrickColor? } & InstanceProperties
export type SmokeProperties = { Color: Color3?, Enabled: boolean?, Opacity: number?, RiseVelocity: number?, Size: number?, TimeScale: number? } & InstanceProperties
export type StyleDeriveProperties = { StyleSheet: StyleSheet? } & InstanceProperties
export type TorqueProperties = { RelativeTo: Enum.ActuatorRelativeTo?, Torque: Vector3? } & ConstraintProperties
export type UniversalConstraintProperties = { LimitsEnabled: boolean?, MaxAngle: number?, Radius: number?, Restitution: number? } & ConstraintProperties
export type PointLightProperties = { Range: number? } & LightProperties
export type CanvasGroupProperties = { GroupColor3: Color3?, GroupTransparency: number? } & GuiObjectProperties
export type SpotLightProperties = { Angle: number?, Face: Enum.NormalId?, Range: number? } & LightProperties
export type WireProperties = { SourceInstance: Instance?, SourceName: string?, TargetInstance: Instance?, TargetName: string? } & InstanceProperties
export type BoneProperties = { Transform: CFrame? } & AttachmentProperties
export type ToolProperties = { CanBeDropped: boolean?, Enabled: boolean?, Grip: CFrame?, ManualActivationOnly: boolean?, RequiresHandle: boolean?, ToolTip: string? } & BackpackItemProperties
export type TextureProperties = { OffsetStudsU: number?, OffsetStudsV: number?, StudsPerTileU: number?, StudsPerTileV: number? } & DecalProperties
export type ScriptProperties = { Source: string? } & BaseScriptProperties
export type PitchShiftSoundEffectProperties = { Octave: number? } & SoundEffectProperties
export type LineHandleAdornmentProperties = { Length: number?, Thickness: number? } & HandleAdornmentProperties
export type TextBoxProperties = { ClearTextOnFocus: boolean?, CursorPosition: number?, FontFace: Font?, LineHeight: number?, MaxVisibleGraphemes: number?, MultiLine: boolean?, OpenTypeFeatures: string?, PlaceholderColor3: Color3?, PlaceholderText: string?, RichText: boolean?, SelectionStart: number?, ShowNativeInput: boolean?, Text: string?, TextColor3: Color3?, TextDirection: Enum.TextDirection?, TextEditable: boolean?, TextScaled: boolean?, TextSize: number?, TextStrokeColor3: Color3?, TextStrokeTransparency: number?, TextTransparency: number?, TextTruncate: Enum.TextTruncate?, TextWrapped: boolean?, TextXAlignment: Enum.TextXAlignment?, TextYAlignment: Enum.TextYAlignment? } & GuiObjectProperties
export type VideoDeviceInputProperties = { Active: boolean?, CameraId: string?, CaptureQuality: Enum.VideoDeviceCaptureQuality? } & InstanceProperties
export type BuoyancySensorProperties = { FullySubmerged: boolean?, TouchingSurface: boolean? } & SensorBaseProperties
export type StringValueProperties = { Value: string? } & InstanceProperties
export type ColorGradingEffectProperties = { TonemapperPreset: Enum.TonemapperPreset? } & PostEffectProperties
export type ObjectValueProperties = { Value: Instance? } & InstanceProperties
export type NumberValueProperties = { Value: number? } & InstanceProperties
export type UITextSizeConstraintProperties = { MaxTextSize: number?, MinTextSize: number? } & InstanceProperties
export type UIStrokeProperties = { ApplyStrokeMode: Enum.ApplyStrokeMode?, Color: Color3?, Enabled: boolean?, LineJoinMode: Enum.LineJoinMode?, Thickness: number?, Transparency: number? } & InstanceProperties
export type UITableLayoutProperties = { FillEmptySpaceColumns: boolean?, FillEmptySpaceRows: boolean?, MajorAxis: Enum.TableMajorAxis?, Padding: UDim2? } & UIGridStyleLayoutProperties
export type UIPageLayoutProperties = { Animated: boolean?, Circular: boolean?, EasingDirection: Enum.EasingDirection?, EasingStyle: Enum.EasingStyle?, GamepadInputEnabled: boolean?, Padding: UDim?, ScrollWheelInputEnabled: boolean?, TouchInputEnabled: boolean?, TweenTime: number? } & UIGridStyleLayoutProperties
export type NoCollisionConstraintProperties = { Enabled: boolean?, Part0: BasePart?, Part1: BasePart? } & InstanceProperties
export type BoxHandleAdornmentProperties = { Size: Vector3? } & HandleAdornmentProperties
export type UIFlexItemProperties = { FlexMode: Enum.UIFlexMode?, GrowRatio: number?, ItemLineAlignment: Enum.ItemLineAlignment?, ShrinkRatio: number? } & InstanceProperties
export type UIAspectRatioConstraintProperties = { AspectRatio: number?, AspectType: Enum.AspectType?, DominantAxis: Enum.DominantAxis? } & InstanceProperties
export type RodConstraintProperties = { Length: number?, LimitAngle0: number?, LimitAngle1: number?, LimitsEnabled: boolean?, Thickness: number? } & ConstraintProperties
export type FileMeshProperties = { MeshId: string?, TextureId: string? } & DataModelMeshProperties
export type ShirtProperties = { ShirtTemplate: string? } & ClothingProperties
export type DebuggerWatchProperties = { Expression: string? } & InstanceProperties
export type GetTextBoundsParamsProperties = { Font: Font?, RichText: boolean?, Size: number?, Text: string?, Width: number? } & InstanceProperties
export type DecalProperties = { Color3: Color3?, Texture: string?, Transparency: number?, ZIndex: number? } & FaceInstanceProperties
export type CharacterMeshProperties = { BaseTextureId: number?, BodyPart: Enum.BodyPart?, MeshId: number?, OverlayTextureId: number? } & InstanceProperties
export type UISizeConstraintProperties = { MaxSize: Vector2?, MinSize: Vector2? } & InstanceProperties
export type TextChatCommandProperties = { AutocompleteVisible: boolean?, Enabled: boolean?, PrimaryAlias: string?, SecondaryAlias: string? } & InstanceProperties
export type Path2DProperties = { Closed: boolean?, Color3: Color3?, Thickness: number?, Visible: boolean?, ZIndex: number? } & InstanceProperties
export type VehicleSeatProperties = { Disabled: boolean?, HeadsUpDisplay: boolean?, MaxSpeed: number?, Steer: number?, SteerFloat: number?, Throttle: number?, ThrottleFloat: number?, Torque: number?, TurnSpeed: number? } & BasePartProperties
export type IntValueProperties = { Value: number? } & InstanceProperties
export type UIGridLayoutProperties = { CellPadding: UDim2?, CellSize: UDim2?, FillDirectionMaxCells: number?, StartCorner: Enum.StartCorner? } & UIGridStyleLayoutProperties
export type SurfaceAppearanceProperties = { Color: Color3? } & InstanceProperties
export type StyleLinkProperties = { StyleSheet: StyleSheet? } & InstanceProperties
export type StyleRuleProperties = { Priority: number?, Selector: string? } & InstanceProperties
export type SoundGroupProperties = { Volume: number? } & InstanceProperties
export type SunRaysEffectProperties = { Intensity: number?, Spread: number? } & PostEffectProperties
export type StudioAttachmentProperties = { AutoHideParent: boolean?, IsArrowVisible: boolean?, Offset: Vector2?, SourceAnchorPoint: Vector2?, TargetAnchorPoint: Vector2? } & InstanceProperties
export type AlignPositionProperties = { ApplyAtCenterOfMass: boolean?, ForceLimitMode: Enum.ForceLimitMode?, ForceRelativeTo: Enum.ActuatorRelativeTo?, MaxAxesForce: Vector3?, MaxForce: number?, MaxVelocity: number?, Mode: Enum.PositionAlignmentMode?, Position: Vector3?, ReactionForceEnabled: boolean?, Responsiveness: number?, RigidityEnabled: boolean? } & ConstraintProperties
export type AdGuiProperties = { AdShape: Enum.AdShape?, EnableVideoAds: boolean?, FallbackImage: string? } & SurfaceGuiBaseProperties
export type IKControlProperties = { ChainRoot: Instance?, Enabled: boolean?, EndEffector: Instance?, EndEffectorOffset: CFrame?, Offset: CFrame?, Pole: Instance?, Priority: number?, SmoothTime: number?, Target: Instance?, Type: Enum.IKControlType?, Weight: number? } & InstanceProperties
export type ScrollingFrameProperties = { AutomaticCanvasSize: Enum.AutomaticSize?, BottomImage: string?, CanvasPosition: Vector2?, CanvasSize: UDim2?, ElasticBehavior: Enum.ElasticBehavior?, HorizontalScrollBarInset: Enum.ScrollBarInset?, MidImage: string?, ScrollBarImageColor3: Color3?, ScrollBarImageTransparency: number?, ScrollBarThickness: number?, ScrollingDirection: Enum.ScrollingDirection?, ScrollingEnabled: boolean?, TopImage: string?, VerticalScrollBarInset: Enum.ScrollBarInset?, VerticalScrollBarPosition: Enum.VerticalScrollBarPosition? } & GuiObjectProperties
export type HighlightProperties = { Adornee: Instance?, DepthMode: Enum.HighlightDepthMode?, Enabled: boolean?, FillColor: Color3?, FillTransparency: number?, OutlineColor: Color3?, OutlineTransparency: number? } & InstanceProperties
export type MeshPartProperties = { TextureID: string? } & BasePartProperties
export type AngularVelocityProperties = { AngularVelocity: Vector3?, MaxTorque: number?, ReactionTorqueEnabled: boolean?, RelativeTo: Enum.ActuatorRelativeTo? } & ConstraintProperties
export type SparklesProperties = { Enabled: boolean?, SparkleColor: Color3?, TimeScale: number? } & InstanceProperties
export type ReverbSoundEffectProperties = { DecayTime: number?, Density: number?, Diffusion: number?, DryLevel: number?, WetLevel: number? } & SoundEffectProperties
export type EqualizerSoundEffectProperties = { HighGain: number?, LowGain: number?, MidGain: number? } & SoundEffectProperties
export type EchoSoundEffectProperties = { Delay: number?, DryLevel: number?, Feedback: number?, WetLevel: number? } & SoundEffectProperties
export type DistortionSoundEffectProperties = { Level: number? } & SoundEffectProperties
export type AtmosphereProperties = { Color: Color3?, Decay: Color3?, Density: number?, Glare: number?, Haze: number?, Offset: number? } & InstanceProperties
export type ChorusSoundEffectProperties = { Depth: number?, Mix: number?, Rate: number? } & SoundEffectProperties
export type DialogChoiceProperties = { GoodbyeChoiceActive: boolean?, GoodbyeDialog: string?, ResponseDialog: string?, UserDialog: string? } & InstanceProperties
export type TerrainDetailProperties = { Face: Enum.TerrainFace?, MaterialPattern: Enum.MaterialPattern?, StudsPerTile: number? } & InstanceProperties
export type AudioChorusProperties = { Bypass: boolean?, Depth: number?, Mix: number?, Rate: number? } & InstanceProperties
export type TextChatMessagePropertiesProperties = { PrefixText: string?, Text: string?, Translation: string? } & InstanceProperties
export type PantsProperties = { PantsTemplate: string? } & ClothingProperties
export type AnimationProperties = { AnimationId: string? } & InstanceProperties
export type ModelProperties = { ModelStreamingMode: Enum.ModelStreamingMode?, PrimaryPart: BasePart?, WorldPivot: CFrame? } & InstanceProperties
export type VelocityMotorProperties = { CurrentAngle: number?, DesiredAngle: number?, Hole: Hole?, MaxVelocity: number? } & JointInstanceProperties
export type PartProperties = { Shape: Enum.PartType? } & BasePartProperties
export type ReflectionMetadataClassProperties = { ExplorerImageIndex: number?, ExplorerOrder: number?, Insertable: boolean?, PreferredParent: string? } & ReflectionMetadataItemProperties
export type AudioSearchParamsProperties = { Album: string?, Artist: string?, AudioSubType: Enum.AudioSubType?, MaxDuration: number?, MinDuration: number?, SearchKeyword: string?, Tag: string?, Title: string? } & InstanceProperties
export type ProximityPromptProperties = { ActionText: string?, AutoLocalize: boolean?, ClickablePrompt: boolean?, Enabled: boolean?, Exclusivity: Enum.ProximityPromptExclusivity?, GamepadKeyCode: Enum.KeyCode?, HoldDuration: number?, KeyboardKeyCode: Enum.KeyCode?, MaxActivationDistance: number?, ObjectText: string?, RequiresLineOfSight: boolean?, RootLocalizationTable: LocalizationTable?, Style: Enum.ProximityPromptStyle?, UIOffset: Vector2? } & InstanceProperties
export type DepthOfFieldEffectProperties = { FarIntensity: number?, FocusDistance: number?, InFocusRadius: number?, NearIntensity: number? } & PostEffectProperties
export type RayValueProperties = { Value: Ray? } & InstanceProperties
export type CameraProperties = { CFrame: CFrame?, CameraSubject: Instance?, CameraType: Enum.CameraType?, DiagonalFieldOfView: number?, FieldOfView: number?, FieldOfViewMode: Enum.FieldOfViewMode?, Focus: CFrame?, HeadLocked: boolean?, HeadScale: number?, MaxAxisFieldOfView: number?, VRTiltAndRollEnabled: boolean? } & InstanceProperties
export type BlurEffectProperties = { Size: number? } & PostEffectProperties
export type BloomEffectProperties = { Intensity: number?, Size: number?, Threshold: number? } & PostEffectProperties
export type UIPaddingProperties = { PaddingBottom: UDim?, PaddingLeft: UDim?, PaddingRight: UDim?, PaddingTop: UDim? } & InstanceProperties
export type NumberPoseProperties = { Value: number? } & PoseBaseProperties
export type BallSocketConstraintProperties = { LimitsEnabled: boolean?, MaxFrictionTorque: number?, Radius: number?, Restitution: number?, TwistLimitsEnabled: boolean?, TwistLowerAngle: number?, TwistUpperAngle: number?, UpperAngle: number? } & ConstraintProperties
export type SoundProperties = { LoopRegion: NumberRange?, Looped: boolean?, PlayOnRemove: boolean?, PlaybackRegion: NumberRange?, PlaybackRegionsEnabled: boolean?, PlaybackSpeed: number?, Playing: boolean?, RollOffMaxDistance: number?, RollOffMinDistance: number?, RollOffMode: Enum.RollOffMode?, SoundGroup: SoundGroup?, SoundId: string?, TimePosition: number?, Volume: number? } & InstanceProperties
export type SurfaceGuiProperties = { AlwaysOnTop: boolean?, Brightness: number?, CanvasSize: Vector2?, ClipsDescendants: boolean?, LightInfluence: number?, MaxDistance: number?, PixelsPerStud: number?, SizingMode: Enum.SurfaceGuiSizingMode?, ToolPunchThroughDistance: number?, ZOffset: number? } & SurfaceGuiBaseProperties
export type ScreenGuiProperties = { ClipToDeviceSafeArea: boolean?, DisplayOrder: number?, IgnoreGuiInset: boolean?, SafeAreaCompatibility: Enum.SafeAreaCompatibility?, ScreenInsets: Enum.ScreenInsets? } & LayerCollectorProperties
export type KeyframeMarkerProperties = { Value: string? } & InstanceProperties
export type ForceFieldProperties = { Visible: boolean? } & InstanceProperties
export type PlayerProperties = { AutoJumpEnabled: boolean?, CameraMaxZoomDistance: number?, CameraMinZoomDistance: number?, CameraMode: Enum.CameraMode?, CanLoadCharacterAppearance: boolean?, Character: Model?, CharacterAppearanceId: number?, DevCameraOcclusionMode: Enum.DevCameraOcclusionMode?, DevComputerCameraMode: Enum.DevComputerCameraMovementMode?, DevComputerMovementMode: Enum.DevComputerMovementMode?, DevEnableMouseLock: boolean?, DevTouchCameraMode: Enum.DevTouchCameraMovementMode?, DevTouchMovementMode: Enum.DevTouchMovementMode?, DisplayName: string?, HasVerifiedBadge: boolean?, HealthDisplayDistance: number?, NameDisplayDistance: number?, Neutral: boolean?, ReplicationFocus: Instance?, RespawnLocation: SpawnLocation?, Team: Team?, TeamColor: BrickColor?, UserId: number? } & InstanceProperties
export type Color3ValueProperties = { Value: Color3? } & InstanceProperties
export type PathfindingModifierProperties = { Label: string?, PassThrough: boolean? } & InstanceProperties
export type FrameProperties = { Style: Enum.FrameStyle? } & GuiObjectProperties
export type MaterialVariantProperties = { CustomPhysicalProperties: PhysicalProperties?, MaterialPattern: Enum.MaterialPattern?, StudsPerTile: number? } & InstanceProperties
export type AudioFilterProperties = { Bypass: boolean?, FilterType: Enum.AudioFilterType?, Frequency: number?, Gain: number?, Q: number? } & InstanceProperties
export type AudioFlangerProperties = { Bypass: boolean?, Depth: number?, Mix: number?, Rate: number? } & InstanceProperties
export type AlignOrientationProperties = { AlignType: Enum.AlignType?, CFrame: CFrame?, LookAtPosition: Vector3?, MaxAngularVelocity: number?, MaxTorque: number?, Mode: Enum.OrientationAlignmentMode?, PrimaryAxis: Vector3?, PrimaryAxisOnly: boolean?, ReactionTorqueEnabled: boolean?, Responsiveness: number?, RigidityEnabled: boolean?, SecondaryAxis: Vector3? } & ConstraintProperties
export type SphereHandleAdornmentProperties = { Radius: number? } & HandleAdornmentProperties
export type AudioPlayerProperties = { AssetId: string?, AutoLoad: boolean?, LoopRegion: NumberRange?, Looping: boolean?, PlaybackRegion: NumberRange?, PlaybackSpeed: number?, TimePosition: number?, Volume: number? } & InstanceProperties
export type TrailProperties = { Attachment0: Attachment?, Attachment1: Attachment?, Brightness: number?, Color: ColorSequence?, Enabled: boolean?, FaceCamera: boolean?, Lifetime: number?, LightEmission: number?, LightInfluence: number?, MaxLength: number?, MinLength: number?, Texture: string?, TextureLength: number?, TextureMode: Enum.TextureMode?, Transparency: NumberSequence?, WidthScale: NumberSequence? } & InstanceProperties
export type AnimatorProperties = { PreferLodEnabled: boolean? } & InstanceProperties
export type AnimationConstraintProperties = { IsKinematic: boolean?, MaxForce: number?, MaxTorque: number?, Transform: CFrame? } & ConstraintProperties
export type BeamProperties = { Attachment0: Attachment?, Attachment1: Attachment?, Brightness: number?, Color: ColorSequence?, CurveSize0: number?, CurveSize1: number?, Enabled: boolean?, FaceCamera: boolean?, LightEmission: number?, LightInfluence: number?, Segments: number?, Texture: string?, TextureLength: number?, TextureMode: Enum.TextureMode?, TextureSpeed: number?, Transparency: NumberSequence?, Width0: number?, Width1: number?, ZOffset: number? } & InstanceProperties
export type VideoFrameProperties = { Looped: boolean?, Playing: boolean?, TimePosition: number?, Video: string?, Volume: number? } & GuiObjectProperties
export type AudioFaderProperties = { Bypass: boolean?, Volume: number? } & InstanceProperties
export type AudioEchoProperties = { Bypass: boolean?, DelayTime: number?, DryLevel: number?, Feedback: number?, WetLevel: number? } & InstanceProperties
export type BodyColorsProperties = { HeadColor: BrickColor?, HeadColor3: Color3?, LeftArmColor: BrickColor?, LeftArmColor3: Color3?, LeftLegColor: BrickColor?, LeftLegColor3: Color3?, RightArmColor: BrickColor?, RightArmColor3: Color3?, RightLegColor: BrickColor?, RightLegColor3: Color3?, TorsoColor: BrickColor?, TorsoColor3: Color3? } & InstanceProperties
export type AudioDistortionProperties = { Bypass: boolean?, Level: number? } & InstanceProperties
export type PartOperationProperties = { UsePartColor: boolean? } & BasePartProperties
export type CompressorSoundEffectProperties = { Attack: number?, GainMakeup: number?, Ratio: number?, Release: number?, SideChain: Instance?, Threshold: number? } & SoundEffectProperties
export type SpawnLocationProperties = { AllowTeamChangeOnTouch: boolean?, Duration: number?, Enabled: boolean?, Neutral: boolean?, TeamColor: BrickColor? } & PartProperties
export type HingeConstraintProperties = { ActuatorType: Enum.ActuatorType?, AngularResponsiveness: number?, AngularSpeed: number?, AngularVelocity: number?, LimitsEnabled: boolean?, LowerAngle: number?, MotorMaxAcceleration: number?, MotorMaxTorque: number?, Radius: number?, Restitution: number?, ServoMaxTorque: number?, TargetAngle: number?, UpperAngle: number? } & ConstraintProperties
export type SpringConstraintProperties = { Coils: number?, Damping: number?, FreeLength: number?, LimitsEnabled: boolean?, MaxForce: number?, MaxLength: number?, MinLength: number?, Radius: number?, Stiffness: number?, Thickness: number? } & ConstraintProperties
export type ConeHandleAdornmentProperties = { Height: number?, Radius: number? } & HandleAdornmentProperties
export type AudioCompressorProperties = { Attack: number?, Bypass: boolean?, MakeupGain: number?, Ratio: number?, Release: number?, Threshold: number? } & InstanceProperties
export type AudioEqualizerProperties = { Bypass: boolean?, HighGain: number?, LowGain: number?, MidGain: number?, MidRange: NumberRange? } & InstanceProperties
export type DragDetectorProperties = { ActivatedCursorIcon: string?, ApplyAtCenterOfMass: boolean?, Axis: Vector3?, DragFrame: CFrame?, DragStyle: Enum.DragDetectorDragStyle?, Enabled: boolean?, GamepadModeSwitchKeyCode: Enum.KeyCode?, KeyboardModeSwitchKeyCode: Enum.KeyCode?, MaxDragAngle: number?, MaxDragTranslation: Vector3?, MaxForce: number?, MaxTorque: number?, MinDragAngle: number?, MinDragTranslation: Vector3?, Orientation: Vector3?, PermissionPolicy: Enum.DragDetectorPermissionPolicy?, ReferenceInstance: Instance?, ResponseStyle: Enum.DragDetectorResponseStyle?, Responsiveness: number?, RunLocally: boolean?, SecondaryAxis: Vector3?, TrackballRadialPullFactor: number?, TrackballRollFactor: number?, VRSwitchKeyCode: Enum.KeyCode?, WorldAxis: Vector3?, WorldSecondaryAxis: Vector3? } & ClickDetectorProperties
export type LinearVelocityProperties = { ForceLimitMode: Enum.ForceLimitMode?, ForceLimitsEnabled: boolean?, LineDirection: Vector3?, LineVelocity: number?, MaxAxesForce: Vector3?, MaxForce: number?, MaxPlanarAxesForce: Vector2?, PlaneVelocity: Vector2?, PrimaryTangentAxis: Vector3?, RelativeTo: Enum.ActuatorRelativeTo?, SecondaryTangentAxis: Vector3?, VectorVelocity: Vector3?, VelocityConstraintMode: Enum.VelocityConstraintMode? } & ConstraintProperties
export type UICornerProperties = { CornerRadius: UDim? } & InstanceProperties
export type BubbleChatMessagePropertiesProperties = { BackgroundColor3: Color3?, BackgroundTransparency: number?, FontFace: Font?, TailVisible: boolean?, TextColor3: Color3?, TextSize: number? } & InstanceProperties
export type UIGradientProperties = { Color: ColorSequence?, Enabled: boolean?, Offset: Vector2?, Rotation: number?, Transparency: NumberSequence? } & InstanceProperties
export type PVAdornmentProperties = { Adornee: PVInstance? } & GuiBase3dProperties
export type GuiButtonProperties = { AutoButtonColor: boolean?, Modal: boolean?, Selected: boolean?, Style: Enum.ButtonStyle? } & GuiObjectProperties
export type ConstraintProperties = { Attachment0: Attachment?, Attachment1: Attachment?, Color: BrickColor?, Enabled: boolean?, Visible: boolean? } & InstanceProperties
export type FaceInstanceProperties = { Face: Enum.NormalId? } & InstanceProperties
export type LayerCollectorProperties = { Enabled: boolean?, ResetOnSpawn: boolean?, ZIndexBehavior: Enum.ZIndexBehavior? } & GuiBase2dProperties
export type PoseBaseProperties = { EasingDirection: Enum.PoseEasingDirection?, EasingStyle: Enum.PoseEasingStyle?, Weight: number? } & InstanceProperties
export type SensorBaseProperties = { UpdateType: Enum.SensorUpdateType? } & InstanceProperties
export type BaseScriptProperties = { Disabled: boolean?, Enabled: boolean? } & InstanceProperties
export type BasePartProperties = { Anchored: boolean?, AssemblyAngularVelocity: Vector3?, AssemblyLinearVelocity: Vector3?, BackSurface: Enum.SurfaceType?, BottomSurface: Enum.SurfaceType?, BrickColor: BrickColor?, CFrame: CFrame?, CanCollide: boolean?, CanQuery: boolean?, CanTouch: boolean?, CastShadow: boolean?, CollisionGroup: string?, Color: Color3?, CustomPhysicalProperties: PhysicalProperties?, EnableFluidForces: boolean?, FrontSurface: Enum.SurfaceType?, LeftSurface: Enum.SurfaceType?, Locked: boolean?, Massless: boolean?, Material: Enum.Material?, MaterialVariant: string?, PivotOffset: CFrame?, Reflectance: number?, RightSurface: Enum.SurfaceType?, RootPriority: number?, Rotation: Vector3?, Size: Vector3?, TopSurface: Enum.SurfaceType?, Transparency: number? } & InstanceProperties
export type PartAdornmentProperties = { Adornee: BasePart? } & GuiBase3dProperties
export type SurfaceGuiBaseProperties = { Active: boolean?, Adornee: Instance?, Face: Enum.NormalId? } & LayerCollectorProperties
export type InstanceAdornmentProperties = { Adornee: Instance? } & GuiBase3dProperties
export type InstanceProperties = { Archivable: boolean?, Name: string?, Parent: Instance? }
export type BackpackItemProperties = { TextureId: string? } & ModelProperties
export type HandleAdornmentProperties = { AdornCullingMode: Enum.AdornCullingMode?, AlwaysOnTop: boolean?, CFrame: CFrame?, SizeRelativeOffset: Vector3?, ZIndex: number? } & PVAdornmentProperties
export type PostEffectProperties = { Enabled: boolean? } & InstanceProperties
export type UIGridStyleLayoutProperties = { FillDirection: Enum.FillDirection?, HorizontalAlignment: Enum.HorizontalAlignment?, SortOrder: Enum.SortOrder?, VerticalAlignment: Enum.VerticalAlignment? } & InstanceProperties
export type GuiBase3dProperties = { Color3: Color3?, Transparency: number?, Visible: boolean? } & InstanceProperties
export type SlidingBallConstraintProperties = { ActuatorType: Enum.ActuatorType?, LimitsEnabled: boolean?, LinearResponsiveness: number?, LowerLimit: number?, MotorMaxAcceleration: number?, MotorMaxForce: number?, Restitution: number?, ServoMaxForce: number?, Size: number?, Speed: number?, TargetPosition: number?, UpperLimit: number?, Velocity: number? } & ConstraintProperties
export type DataModelMeshProperties = { Offset: Vector3?, Scale: Vector3?, VertexColor: Vector3? } & InstanceProperties
export type SoundEffectProperties = { Enabled: boolean?, Priority: number? } & InstanceProperties
export type GuiObjectProperties = { Active: boolean?, AnchorPoint: Vector2?, AutomaticSize: Enum.AutomaticSize?, BackgroundColor3: Color3?, BackgroundTransparency: number?, BorderColor3: Color3?, BorderMode: Enum.BorderMode?, BorderSizePixel: number?, ClipsDescendants: boolean?, Interactable: boolean?, LayoutOrder: number?, NextSelectionDown: GuiObject?, NextSelectionLeft: GuiObject?, NextSelectionRight: GuiObject?, NextSelectionUp: GuiObject?, Position: UDim2?, Rotation: number?, Selectable: boolean?, SelectionImageObject: GuiObject?, SelectionOrder: number?, Size: UDim2?, SizeConstraint: Enum.SizeConstraint?, Visible: boolean?, ZIndex: number? } & GuiBase2dProperties
export type LightProperties = { Brightness: number?, Color: Color3?, Enabled: boolean?, Shadows: boolean? } & InstanceProperties
export type JointInstanceProperties = { C0: CFrame?, C1: CFrame?, Enabled: boolean?, Part0: BasePart?, Part1: BasePart? } & InstanceProperties
export type ClothingProperties = { Color3: Color3? } & InstanceProperties
export type ReflectionMetadataItemProperties = { Browsable: boolean?, ClassCategory: string?, ClientOnly: boolean?, Constraint: string?, Deprecated: boolean?, EditingDisabled: boolean?, EditorType: string?, FFlag: string?, IsBackend: boolean?, PropertyOrder: number?, ScriptContext: string?, ServerOnly: boolean?, SliderScaling: string?, UIMaximum: number?, UIMinimum: number?, UINumTicks: number? } & InstanceProperties
export type GuiBase2dProperties = { AutoLocalize: boolean?, RootLocalizationTable: LocalizationTable?, SelectionBehaviorDown: Enum.SelectionBehavior?, SelectionBehaviorLeft: Enum.SelectionBehavior?, SelectionBehaviorRight: Enum.SelectionBehavior?, SelectionBehaviorUp: Enum.SelectionBehavior?, SelectionGroup: boolean? } & InstanceProperties
export type AnimationClipProperties = { Loop: boolean?, Priority: Enum.AnimationPriority? } & InstanceProperties

declare function GetPort(id: number?): Port?
declare GetPartsFromPort:
	  _GetPartsFromPort<"Rocket", Rocket>
	& _GetPartsFromPort<"DelayWire", DelayWire>
	& _GetPartsFromPort<"Hatch", Hatch>
	& _GetPartsFromPort<"Scrapper", Scrapper>
	& _GetPartsFromPort<"Boiler", Boiler>
	& _GetPartsFromPort<"Extractor", Extractor>
	& _GetPartsFromPort<"BurstLaser", BurstLaser>
	& _GetPartsFromPort<"Apparel", Apparel>
	& _GetPartsFromPort<"Flamethrower", Flamethrower>
	& _GetPartsFromPort<"Light", Light>
	& _GetPartsFromPort<"Cooler", Cooler>
	& _GetPartsFromPort<"CloningBay", CloningBay>
	& _GetPartsFromPort<"Food", Food>
	& _GetPartsFromPort<"Balloon", Balloon>
	& _GetPartsFromPort<"Lead", Lead>
	& _GetPartsFromPort<"BlastingCap", BlastingCap>
	& _GetPartsFromPort<"HeatPipe", HeatPipe>
	& _GetPartsFromPort<"Filter", Filter>
	& _GetPartsFromPort<"DarkReactor", DarkReactor>
	& _GetPartsFromPort<"Antenna", Antenna>
	& _GetPartsFromPort<"Glass", Glass>
	& _GetPartsFromPort<"RegionCloaker", RegionCloaker>
	& _GetPartsFromPort<"ARController", ARController>
	& _GetPartsFromPort<"Beryllium", Beryllium>
	& _GetPartsFromPort<"Polysilicon", Polysilicon>
	& _GetPartsFromPort<"Teleporter", Teleporter>
	& _GetPartsFromPort<"BallastTank", BallastTank>
	& _GetPartsFromPort<"CornerTetra", CornerTetra>
	& _GetPartsFromPort<"Laser", Laser>
	& _GetPartsFromPort<"Gear", Gear>
	& _GetPartsFromPort<"WaterCooler", WaterCooler>
	& _GetPartsFromPort<"ZapWire", ZapWire>
	& _GetPartsFromPort<"Furnace", Furnace>
	& _GetPartsFromPort<"Wood", Wood>
	& _GetPartsFromPort<"Cannon", Cannon>
	& _GetPartsFromPort<"Switch", Switch>
	& _GetPartsFromPort<"Cone", Cone>
	& _GetPartsFromPort<"Wire", Wire>
	& _GetPartsFromPort<"ReinforcedGlass", ReinforcedGlass>
	& _GetPartsFromPort<"BurnerGenerator", BurnerGenerator>
	& _GetPartsFromPort<"Tetrahedron", Tetrahedron>
	& _GetPartsFromPort<"Pipe", Pipe>
	& _GetPartsFromPort<"EthernetCable", EthernetCable>
	& _GetPartsFromPort<"AutomaticLaser", AutomaticLaser>
	& _GetPartsFromPort<"Wing", Wing>
	& _GetPartsFromPort<"Faucet", Faucet>
	& _GetPartsFromPort<"AlienCore", AlienCore>
	& _GetPartsFromPort<"Fence", Fence>
	& _GetPartsFromPort<"Modem", Modem>
	& _GetPartsFromPort<"Wedge", Wedge>
	& _GetPartsFromPort<"Servo", Servo>
	& _GetPartsFromPort<"DriveBox", DriveBox>
	& _GetPartsFromPort<"Water", Water>
	& _GetPartsFromPort<"MustardGas", MustardGas>
	& _GetPartsFromPort<"SolarScoop", SolarScoop>
	& _GetPartsFromPort<"Thruster", Thruster>
	& _GetPartsFromPort<"VehicleSeat", VehicleSeat>
	& _GetPartsFromPort<"Sail", Sail>
	& _GetPartsFromPort<"Gyro", Gyro>
	& _GetPartsFromPort<"Truss", Truss>
	& _GetPartsFromPort<"TriggerWire", TriggerWire>
	& _GetPartsFromPort<"CombustionTurbine", CombustionTurbine>
	& _GetPartsFromPort<"ExoticMatter", ExoticMatter>
	& _GetPartsFromPort<"HyperDrive", HyperDrive>
	& _GetPartsFromPort<"Transporter", Transporter>
	& _GetPartsFromPort<"TouchScreen", TouchScreen>
	& _GetPartsFromPort<"ElectricFence", ElectricFence>
	& _GetPartsFromPort<"Transistor", Transistor>
	& _GetPartsFromPort<"EnergyBomb", EnergyBomb>
	& _GetPartsFromPort<"Pump", Pump>
	& _GetPartsFromPort<"Snow", Snow>
	& _GetPartsFromPort<"100k", _100k>
	& _GetPartsFromPort<"TractorBeam", TractorBeam>
	& _GetPartsFromPort<"Camera", Camera>
	& _GetPartsFromPort<"TouchSensor", TouchSensor>
	& _GetPartsFromPort<"Assembler", Assembler>
	& _GetPartsFromPort<"Hydroponic", Hydroponic>
	& _GetPartsFromPort<"Radar", Radar>
	& _GetPartsFromPort<"Tank", Tank>
	& _GetPartsFromPort<"Diode", Diode>
	& _GetPartsFromPort<"Gasoline", Gasoline>
	& _GetPartsFromPort<"TimeSensor", TimeSensor>
	& _GetPartsFromPort<"Neon", Neon>
	& _GetPartsFromPort<"Iron", Iron>
	& _GetPartsFromPort<"Cement", Cement>
	& _GetPartsFromPort<"StasisField", StasisField>
	& _GetPartsFromPort<"Coal", Coal>
	& _GetPartsFromPort<"LightBridge", LightBridge>
	& _GetPartsFromPort<"Cylinder", Cylinder>
	& _GetPartsFromPort<"Ball", Ball>
	& _GetPartsFromPort<"FireWood", FireWood>
	& _GetPartsFromPort<"TemperatureSensor", TemperatureSensor>
	& _GetPartsFromPort<"ProximityButton", ProximityButton>
	& _GetPartsFromPort<"MiningLaser", MiningLaser>
	& _GetPartsFromPort<"TemperatureGate", TemperatureGate>
	& _GetPartsFromPort<"Keyboard", Keyboard>
	& _GetPartsFromPort<"TintedGlass", TintedGlass>
	& _GetPartsFromPort<"WirelessButton", WirelessButton>
	& _GetPartsFromPort<"DarkConverter", DarkConverter>
	& _GetPartsFromPort<"Sulfur", Sulfur>
	& _GetPartsFromPort<"Beacon", Beacon>
	& _GetPartsFromPort<"LightTube", LightTube>
	& _GetPartsFromPort<"LifeSensor", LifeSensor>
	& _GetPartsFromPort<"StudAligner", StudAligner>
	& _GetPartsFromPort<"Explosive", Explosive>
	& _GetPartsFromPort<"Stone", Stone>
	& _GetPartsFromPort<"Stick", Stick>
	& _GetPartsFromPort<"Router", Router>
	& _GetPartsFromPort<"SteamTurbine", SteamTurbine>
	& _GetPartsFromPort<"SteamEngine", SteamEngine>
	& _GetPartsFromPort<"Asphalt", Asphalt>
	& _GetPartsFromPort<"Ice", Ice>
	& _GetPartsFromPort<"StarMap", StarMap>
	& _GetPartsFromPort<"Steam", Steam>
	& _GetPartsFromPort<"Stanlium", Stanlium>
	& _GetPartsFromPort<"Spotlight", Spotlight>
	& _GetPartsFromPort<"Propeller", Propeller>
	& _GetPartsFromPort<"Button", Button>
	& _GetPartsFromPort<"Battery", Battery>
	& _GetPartsFromPort<"Plutonium", Plutonium>
	& _GetPartsFromPort<"Coupler", Coupler>
	& _GetPartsFromPort<"Brick", Brick>
	& _GetPartsFromPort<"Sorter", Sorter>
	& _GetPartsFromPort<"Warhead", Warhead>
	& _GetPartsFromPort<"Lava", Lava>
	& _GetPartsFromPort<"Engine", Engine>
	& _GetPartsFromPort<"Transformer", Transformer>
	& _GetPartsFromPort<"SmoothReinforcedGlass", SmoothReinforcedGlass>
	& _GetPartsFromPort<"SmoothGlass", SmoothGlass>
	& _GetPartsFromPort<"Silicon", Silicon>
	& _GetPartsFromPort<"Fireworks", Fireworks>
	& _GetPartsFromPort<"Cleat", Cleat>
	& _GetPartsFromPort<"Seat", Seat>
	& _GetPartsFromPort<"Sign", Sign>
	& _GetPartsFromPort<"Screen", Screen>
	& _GetPartsFromPort<"Scanner", Scanner>
	& _GetPartsFromPort<"Sand", Sand>
	& _GetPartsFromPort<"Valve", Valve>
	& _GetPartsFromPort<"Refinery", Refinery>
	& _GetPartsFromPort<"Melter", Melter>
	& _GetPartsFromPort<"Ruby", Ruby>
	& _GetPartsFromPort<"Freezer", Freezer>
	& _GetPartsFromPort<"Rubber", Rubber>
	& _GetPartsFromPort<"Hologram", Hologram>
	& _GetPartsFromPort<"RoundWedge", RoundWedge>
	& _GetPartsFromPort<"Motor", Motor>
	& _GetPartsFromPort<"RemoteControl", RemoteControl>
	& _GetPartsFromPort<"PowerCell", PowerCell>
	& _GetPartsFromPort<"PlasmaCannon", PlasmaCannon>
	& _GetPartsFromPort<"Railgun", Railgun>
	& _GetPartsFromPort<"Dispenser", Dispenser>
	& _GetPartsFromPort<"RustedMetal", RustedMetal>
	& _GetPartsFromPort<"Piston", Piston>
	& _GetPartsFromPort<"Treads", Treads>
	& _GetPartsFromPort<"Marble", Marble>
	& _GetPartsFromPort<"Flint", Flint>
	& _GetPartsFromPort<"Anchor", Anchor>
	& _GetPartsFromPort<"Rail", Rail>
	& _GetPartsFromPort<"CrudeWing", CrudeWing>
	& _GetPartsFromPort<"Tire", Tire>
	& _GetPartsFromPort<"Artillery", Artillery>
	& _GetPartsFromPort<"Diamond", Diamond>
	& _GetPartsFromPort<"NitrogenOxide", NitrogenOxide>
	& _GetPartsFromPort<"Quartz", Quartz>
	& _GetPartsFromPort<"HeatValve", HeatValve>
	& _GetPartsFromPort<"Microcontroller", Microcontroller>
	& _GetPartsFromPort<"AirSupply", AirSupply>
	& _GetPartsFromPort<"Constructor", Constructor>
	& _GetPartsFromPort<"Pulverizer", Pulverizer>
	& _GetPartsFromPort<"Hydrogen", Hydrogen>
	& _GetPartsFromPort<"HeatPump", HeatPump>
	& _GetPartsFromPort<"Speaker", Speaker>
	& _GetPartsFromPort<"Cloth", Cloth>
	& _GetPartsFromPort<"Primer", Primer>
	& _GetPartsFromPort<"Port", Port>
	& _GetPartsFromPort<"PlutoniumCore", PlutoniumCore>
	& _GetPartsFromPort<"Magnesium", Magnesium>
	& _GetPartsFromPort<"EnergyShield", EnergyShield>
	& _GetPartsFromPort<"SoundMuffler", SoundMuffler>
	& _GetPartsFromPort<"Jade", Jade>
	& _GetPartsFromPort<"Plastic", Plastic>
	& _GetPartsFromPort<"StorageSensor", StorageSensor>
	& _GetPartsFromPort<"Petroleum", Petroleum>
	& _GetPartsFromPort<"Perfectium", Perfectium>
	& _GetPartsFromPort<"Goo", Goo>
	& _GetPartsFromPort<"Aerogel", Aerogel>
	& _GetPartsFromPort<"Microphone", Microphone>
	& _GetPartsFromPort<"Gold", Gold>
	& _GetPartsFromPort<"ObjectDetector", ObjectDetector>
	& _GetPartsFromPort<"Winch", Winch>
	& _GetPartsFromPort<"Obamium", Obamium>
	& _GetPartsFromPort<"Insulation", Insulation>
	& _GetPartsFromPort<"Chute", Chute>
	& _GetPartsFromPort<"RTG", RTG>
	& _GetPartsFromPort<"Neutronium", Neutronium>
	& _GetPartsFromPort<"Rotor", Rotor>
	& _GetPartsFromPort<"Controller", Controller>
	& _GetPartsFromPort<"Obelisk", Obelisk>
	& _GetPartsFromPort<"GravityGenerator", GravityGenerator>
	& _GetPartsFromPort<"Kiln", Kiln>
	& _GetPartsFromPort<"Aluminum", Aluminum>
	& _GetPartsFromPort<"Telescope", Telescope>
	& _GetPartsFromPort<"IonRocket", IonRocket>
	& _GetPartsFromPort<"Instrument", Instrument>
	& _GetPartsFromPort<"BlackBox", BlackBox>
	& _GetPartsFromPort<"ImpulseCannon", ImpulseCannon>
	& _GetPartsFromPort<"ConveyorBelt", ConveyorBelt>
	& _GetPartsFromPort<"CornerRoundWedge", CornerRoundWedge>
	& _GetPartsFromPort<"Grass", Grass>
	& _GetPartsFromPort<"Reactor", Reactor>
	& _GetPartsFromPort<"Titanium", Titanium>
	& _GetPartsFromPort<"DarkMatter", DarkMatter>
	& _GetPartsFromPort<"Prosthetic", Prosthetic>
	& _GetPartsFromPort<"RoundWedge2", RoundWedge2>
	& _GetPartsFromPort<"Helium", Helium>
	& _GetPartsFromPort<"Heater", Heater>
	& _GetPartsFromPort<"Oil", Oil>
	& _GetPartsFromPort<"HalfSphere", HalfSphere>
	& _GetPartsFromPort<"Uranium", Uranium>
	& _GetPartsFromPort<"Gun", Gun>
	& _GetPartsFromPort<"Handle", Handle>
	& _GetPartsFromPort<"GeigerCounter", GeigerCounter>
	& _GetPartsFromPort<"Framewire", Framewire>
	& _GetPartsFromPort<"Bin", Bin>
	& _GetPartsFromPort<"FloatDevice", FloatDevice>
	& _GetPartsFromPort<"CornerWedge", CornerWedge>
	& _GetPartsFromPort<"Copper", Copper>
	& _GetPartsFromPort<"Tile", Tile>
	& _GetPartsFromPort<"Plasma", Plasma>
	& _GetPartsFromPort<"TriggerSwitch", TriggerSwitch>
	& _GetPartsFromPort<"SolarPanel", SolarPanel>
	& _GetPartsFromPort<"Boombox", Boombox>
	& _GetPartsFromPort<"EnergyGun", EnergyGun>
	& _GetPartsFromPort<"NuclearWaste", NuclearWaste>
	& _GetPartsFromPort<"Disk", Disk>
	& _GetPartsFromPort<"Igniter", Igniter>
	& _GetPartsFromPort<"CornerRoundWedge2", CornerRoundWedge2>
	& _GetPartsFromPort<"DeleteSwitch", DeleteSwitch>
	& _GetPartsFromPort<"Electromagnet", Electromagnet>
	& _GetPartsFromPort<"SpawnPoint", SpawnPoint>
	& _GetPartsFromPort<string?, PilotObject>
declare GetPart:
	  _GetPart<"Rocket", Rocket>
	& _GetPart<"DelayWire", DelayWire>
	& _GetPart<"Hatch", Hatch>
	& _GetPart<"Scrapper", Scrapper>
	& _GetPart<"Boiler", Boiler>
	& _GetPart<"Extractor", Extractor>
	& _GetPart<"BurstLaser", BurstLaser>
	& _GetPart<"Apparel", Apparel>
	& _GetPart<"Flamethrower", Flamethrower>
	& _GetPart<"Light", Light>
	& _GetPart<"Cooler", Cooler>
	& _GetPart<"CloningBay", CloningBay>
	& _GetPart<"Food", Food>
	& _GetPart<"Balloon", Balloon>
	& _GetPart<"Lead", Lead>
	& _GetPart<"BlastingCap", BlastingCap>
	& _GetPart<"HeatPipe", HeatPipe>
	& _GetPart<"Filter", Filter>
	& _GetPart<"DarkReactor", DarkReactor>
	& _GetPart<"Antenna", Antenna>
	& _GetPart<"Glass", Glass>
	& _GetPart<"RegionCloaker", RegionCloaker>
	& _GetPart<"ARController", ARController>
	& _GetPart<"Beryllium", Beryllium>
	& _GetPart<"Polysilicon", Polysilicon>
	& _GetPart<"Teleporter", Teleporter>
	& _GetPart<"BallastTank", BallastTank>
	& _GetPart<"CornerTetra", CornerTetra>
	& _GetPart<"Laser", Laser>
	& _GetPart<"Gear", Gear>
	& _GetPart<"WaterCooler", WaterCooler>
	& _GetPart<"ZapWire", ZapWire>
	& _GetPart<"Furnace", Furnace>
	& _GetPart<"Wood", Wood>
	& _GetPart<"Cannon", Cannon>
	& _GetPart<"Switch", Switch>
	& _GetPart<"Cone", Cone>
	& _GetPart<"Wire", Wire>
	& _GetPart<"ReinforcedGlass", ReinforcedGlass>
	& _GetPart<"BurnerGenerator", BurnerGenerator>
	& _GetPart<"Tetrahedron", Tetrahedron>
	& _GetPart<"Pipe", Pipe>
	& _GetPart<"EthernetCable", EthernetCable>
	& _GetPart<"AutomaticLaser", AutomaticLaser>
	& _GetPart<"Wing", Wing>
	& _GetPart<"Faucet", Faucet>
	& _GetPart<"AlienCore", AlienCore>
	& _GetPart<"Fence", Fence>
	& _GetPart<"Modem", Modem>
	& _GetPart<"Wedge", Wedge>
	& _GetPart<"Servo", Servo>
	& _GetPart<"DriveBox", DriveBox>
	& _GetPart<"Water", Water>
	& _GetPart<"MustardGas", MustardGas>
	& _GetPart<"SolarScoop", SolarScoop>
	& _GetPart<"Thruster", Thruster>
	& _GetPart<"VehicleSeat", VehicleSeat>
	& _GetPart<"Sail", Sail>
	& _GetPart<"Gyro", Gyro>
	& _GetPart<"Truss", Truss>
	& _GetPart<"TriggerWire", TriggerWire>
	& _GetPart<"CombustionTurbine", CombustionTurbine>
	& _GetPart<"ExoticMatter", ExoticMatter>
	& _GetPart<"HyperDrive", HyperDrive>
	& _GetPart<"Transporter", Transporter>
	& _GetPart<"TouchScreen", TouchScreen>
	& _GetPart<"ElectricFence", ElectricFence>
	& _GetPart<"Transistor", Transistor>
	& _GetPart<"EnergyBomb", EnergyBomb>
	& _GetPart<"Pump", Pump>
	& _GetPart<"Snow", Snow>
	& _GetPart<"100k", _100k>
	& _GetPart<"TractorBeam", TractorBeam>
	& _GetPart<"Camera", Camera>
	& _GetPart<"TouchSensor", TouchSensor>
	& _GetPart<"Assembler", Assembler>
	& _GetPart<"Hydroponic", Hydroponic>
	& _GetPart<"Radar", Radar>
	& _GetPart<"Tank", Tank>
	& _GetPart<"Diode", Diode>
	& _GetPart<"Gasoline", Gasoline>
	& _GetPart<"TimeSensor", TimeSensor>
	& _GetPart<"Neon", Neon>
	& _GetPart<"Iron", Iron>
	& _GetPart<"Cement", Cement>
	& _GetPart<"StasisField", StasisField>
	& _GetPart<"Coal", Coal>
	& _GetPart<"LightBridge", LightBridge>
	& _GetPart<"Cylinder", Cylinder>
	& _GetPart<"Ball", Ball>
	& _GetPart<"FireWood", FireWood>
	& _GetPart<"TemperatureSensor", TemperatureSensor>
	& _GetPart<"ProximityButton", ProximityButton>
	& _GetPart<"MiningLaser", MiningLaser>
	& _GetPart<"TemperatureGate", TemperatureGate>
	& _GetPart<"Keyboard", Keyboard>
	& _GetPart<"TintedGlass", TintedGlass>
	& _GetPart<"WirelessButton", WirelessButton>
	& _GetPart<"DarkConverter", DarkConverter>
	& _GetPart<"Sulfur", Sulfur>
	& _GetPart<"Beacon", Beacon>
	& _GetPart<"LightTube", LightTube>
	& _GetPart<"LifeSensor", LifeSensor>
	& _GetPart<"StudAligner", StudAligner>
	& _GetPart<"Explosive", Explosive>
	& _GetPart<"Stone", Stone>
	& _GetPart<"Stick", Stick>
	& _GetPart<"Router", Router>
	& _GetPart<"SteamTurbine", SteamTurbine>
	& _GetPart<"SteamEngine", SteamEngine>
	& _GetPart<"Asphalt", Asphalt>
	& _GetPart<"Ice", Ice>
	& _GetPart<"StarMap", StarMap>
	& _GetPart<"Steam", Steam>
	& _GetPart<"Stanlium", Stanlium>
	& _GetPart<"Spotlight", Spotlight>
	& _GetPart<"Propeller", Propeller>
	& _GetPart<"Button", Button>
	& _GetPart<"Battery", Battery>
	& _GetPart<"Plutonium", Plutonium>
	& _GetPart<"Coupler", Coupler>
	& _GetPart<"Brick", Brick>
	& _GetPart<"Sorter", Sorter>
	& _GetPart<"Warhead", Warhead>
	& _GetPart<"Lava", Lava>
	& _GetPart<"Engine", Engine>
	& _GetPart<"Transformer", Transformer>
	& _GetPart<"SmoothReinforcedGlass", SmoothReinforcedGlass>
	& _GetPart<"SmoothGlass", SmoothGlass>
	& _GetPart<"Silicon", Silicon>
	& _GetPart<"Fireworks", Fireworks>
	& _GetPart<"Cleat", Cleat>
	& _GetPart<"Seat", Seat>
	& _GetPart<"Sign", Sign>
	& _GetPart<"Screen", Screen>
	& _GetPart<"Scanner", Scanner>
	& _GetPart<"Sand", Sand>
	& _GetPart<"Valve", Valve>
	& _GetPart<"Refinery", Refinery>
	& _GetPart<"Melter", Melter>
	& _GetPart<"Ruby", Ruby>
	& _GetPart<"Freezer", Freezer>
	& _GetPart<"Rubber", Rubber>
	& _GetPart<"Hologram", Hologram>
	& _GetPart<"RoundWedge", RoundWedge>
	& _GetPart<"Motor", Motor>
	& _GetPart<"RemoteControl", RemoteControl>
	& _GetPart<"PowerCell", PowerCell>
	& _GetPart<"PlasmaCannon", PlasmaCannon>
	& _GetPart<"Railgun", Railgun>
	& _GetPart<"Dispenser", Dispenser>
	& _GetPart<"RustedMetal", RustedMetal>
	& _GetPart<"Piston", Piston>
	& _GetPart<"Treads", Treads>
	& _GetPart<"Marble", Marble>
	& _GetPart<"Flint", Flint>
	& _GetPart<"Anchor", Anchor>
	& _GetPart<"Rail", Rail>
	& _GetPart<"CrudeWing", CrudeWing>
	& _GetPart<"Tire", Tire>
	& _GetPart<"Artillery", Artillery>
	& _GetPart<"Diamond", Diamond>
	& _GetPart<"NitrogenOxide", NitrogenOxide>
	& _GetPart<"Quartz", Quartz>
	& _GetPart<"HeatValve", HeatValve>
	& _GetPart<"Microcontroller", Microcontroller>
	& _GetPart<"AirSupply", AirSupply>
	& _GetPart<"Constructor", Constructor>
	& _GetPart<"Pulverizer", Pulverizer>
	& _GetPart<"Hydrogen", Hydrogen>
	& _GetPart<"HeatPump", HeatPump>
	& _GetPart<"Speaker", Speaker>
	& _GetPart<"Cloth", Cloth>
	& _GetPart<"Primer", Primer>
	& _GetPart<"Port", Port>
	& _GetPart<"PlutoniumCore", PlutoniumCore>
	& _GetPart<"Magnesium", Magnesium>
	& _GetPart<"EnergyShield", EnergyShield>
	& _GetPart<"SoundMuffler", SoundMuffler>
	& _GetPart<"Jade", Jade>
	& _GetPart<"Plastic", Plastic>
	& _GetPart<"StorageSensor", StorageSensor>
	& _GetPart<"Petroleum", Petroleum>
	& _GetPart<"Perfectium", Perfectium>
	& _GetPart<"Goo", Goo>
	& _GetPart<"Aerogel", Aerogel>
	& _GetPart<"Microphone", Microphone>
	& _GetPart<"Gold", Gold>
	& _GetPart<"ObjectDetector", ObjectDetector>
	& _GetPart<"Winch", Winch>
	& _GetPart<"Obamium", Obamium>
	& _GetPart<"Insulation", Insulation>
	& _GetPart<"Chute", Chute>
	& _GetPart<"RTG", RTG>
	& _GetPart<"Neutronium", Neutronium>
	& _GetPart<"Rotor", Rotor>
	& _GetPart<"Controller", Controller>
	& _GetPart<"Obelisk", Obelisk>
	& _GetPart<"GravityGenerator", GravityGenerator>
	& _GetPart<"Kiln", Kiln>
	& _GetPart<"Aluminum", Aluminum>
	& _GetPart<"Telescope", Telescope>
	& _GetPart<"IonRocket", IonRocket>
	& _GetPart<"Instrument", Instrument>
	& _GetPart<"BlackBox", BlackBox>
	& _GetPart<"ImpulseCannon", ImpulseCannon>
	& _GetPart<"ConveyorBelt", ConveyorBelt>
	& _GetPart<"CornerRoundWedge", CornerRoundWedge>
	& _GetPart<"Grass", Grass>
	& _GetPart<"Reactor", Reactor>
	& _GetPart<"Titanium", Titanium>
	& _GetPart<"DarkMatter", DarkMatter>
	& _GetPart<"Prosthetic", Prosthetic>
	& _GetPart<"RoundWedge2", RoundWedge2>
	& _GetPart<"Helium", Helium>
	& _GetPart<"Heater", Heater>
	& _GetPart<"Oil", Oil>
	& _GetPart<"HalfSphere", HalfSphere>
	& _GetPart<"Uranium", Uranium>
	& _GetPart<"Gun", Gun>
	& _GetPart<"Handle", Handle>
	& _GetPart<"GeigerCounter", GeigerCounter>
	& _GetPart<"Framewire", Framewire>
	& _GetPart<"Bin", Bin>
	& _GetPart<"FloatDevice", FloatDevice>
	& _GetPart<"CornerWedge", CornerWedge>
	& _GetPart<"Copper", Copper>
	& _GetPart<"Tile", Tile>
	& _GetPart<"Plasma", Plasma>
	& _GetPart<"TriggerSwitch", TriggerSwitch>
	& _GetPart<"SolarPanel", SolarPanel>
	& _GetPart<"Boombox", Boombox>
	& _GetPart<"EnergyGun", EnergyGun>
	& _GetPart<"NuclearWaste", NuclearWaste>
	& _GetPart<"Disk", Disk>
	& _GetPart<"Igniter", Igniter>
	& _GetPart<"CornerRoundWedge2", CornerRoundWedge2>
	& _GetPart<"DeleteSwitch", DeleteSwitch>
	& _GetPart<"Electromagnet", Electromagnet>
	& _GetPart<"SpawnPoint", SpawnPoint>
	& _GetPart<string?, PilotObject>
declare GetPartFromPort:
	  _GetPartFromPort<"Rocket", Rocket>
	& _GetPartFromPort<"DelayWire", DelayWire>
	& _GetPartFromPort<"Hatch", Hatch>
	& _GetPartFromPort<"Scrapper", Scrapper>
	& _GetPartFromPort<"Boiler", Boiler>
	& _GetPartFromPort<"Extractor", Extractor>
	& _GetPartFromPort<"BurstLaser", BurstLaser>
	& _GetPartFromPort<"Apparel", Apparel>
	& _GetPartFromPort<"Flamethrower", Flamethrower>
	& _GetPartFromPort<"Light", Light>
	& _GetPartFromPort<"Cooler", Cooler>
	& _GetPartFromPort<"CloningBay", CloningBay>
	& _GetPartFromPort<"Food", Food>
	& _GetPartFromPort<"Balloon", Balloon>
	& _GetPartFromPort<"Lead", Lead>
	& _GetPartFromPort<"BlastingCap", BlastingCap>
	& _GetPartFromPort<"HeatPipe", HeatPipe>
	& _GetPartFromPort<"Filter", Filter>
	& _GetPartFromPort<"DarkReactor", DarkReactor>
	& _GetPartFromPort<"Antenna", Antenna>
	& _GetPartFromPort<"Glass", Glass>
	& _GetPartFromPort<"RegionCloaker", RegionCloaker>
	& _GetPartFromPort<"ARController", ARController>
	& _GetPartFromPort<"Beryllium", Beryllium>
	& _GetPartFromPort<"Polysilicon", Polysilicon>
	& _GetPartFromPort<"Teleporter", Teleporter>
	& _GetPartFromPort<"BallastTank", BallastTank>
	& _GetPartFromPort<"CornerTetra", CornerTetra>
	& _GetPartFromPort<"Laser", Laser>
	& _GetPartFromPort<"Gear", Gear>
	& _GetPartFromPort<"WaterCooler", WaterCooler>
	& _GetPartFromPort<"ZapWire", ZapWire>
	& _GetPartFromPort<"Furnace", Furnace>
	& _GetPartFromPort<"Wood", Wood>
	& _GetPartFromPort<"Cannon", Cannon>
	& _GetPartFromPort<"Switch", Switch>
	& _GetPartFromPort<"Cone", Cone>
	& _GetPartFromPort<"Wire", Wire>
	& _GetPartFromPort<"ReinforcedGlass", ReinforcedGlass>
	& _GetPartFromPort<"BurnerGenerator", BurnerGenerator>
	& _GetPartFromPort<"Tetrahedron", Tetrahedron>
	& _GetPartFromPort<"Pipe", Pipe>
	& _GetPartFromPort<"EthernetCable", EthernetCable>
	& _GetPartFromPort<"AutomaticLaser", AutomaticLaser>
	& _GetPartFromPort<"Wing", Wing>
	& _GetPartFromPort<"Faucet", Faucet>
	& _GetPartFromPort<"AlienCore", AlienCore>
	& _GetPartFromPort<"Fence", Fence>
	& _GetPartFromPort<"Modem", Modem>
	& _GetPartFromPort<"Wedge", Wedge>
	& _GetPartFromPort<"Servo", Servo>
	& _GetPartFromPort<"DriveBox", DriveBox>
	& _GetPartFromPort<"Water", Water>
	& _GetPartFromPort<"MustardGas", MustardGas>
	& _GetPartFromPort<"SolarScoop", SolarScoop>
	& _GetPartFromPort<"Thruster", Thruster>
	& _GetPartFromPort<"VehicleSeat", VehicleSeat>
	& _GetPartFromPort<"Sail", Sail>
	& _GetPartFromPort<"Gyro", Gyro>
	& _GetPartFromPort<"Truss", Truss>
	& _GetPartFromPort<"TriggerWire", TriggerWire>
	& _GetPartFromPort<"CombustionTurbine", CombustionTurbine>
	& _GetPartFromPort<"ExoticMatter", ExoticMatter>
	& _GetPartFromPort<"HyperDrive", HyperDrive>
	& _GetPartFromPort<"Transporter", Transporter>
	& _GetPartFromPort<"TouchScreen", TouchScreen>
	& _GetPartFromPort<"ElectricFence", ElectricFence>
	& _GetPartFromPort<"Transistor", Transistor>
	& _GetPartFromPort<"EnergyBomb", EnergyBomb>
	& _GetPartFromPort<"Pump", Pump>
	& _GetPartFromPort<"Snow", Snow>
	& _GetPartFromPort<"100k", _100k>
	& _GetPartFromPort<"TractorBeam", TractorBeam>
	& _GetPartFromPort<"Camera", Camera>
	& _GetPartFromPort<"TouchSensor", TouchSensor>
	& _GetPartFromPort<"Assembler", Assembler>
	& _GetPartFromPort<"Hydroponic", Hydroponic>
	& _GetPartFromPort<"Radar", Radar>
	& _GetPartFromPort<"Tank", Tank>
	& _GetPartFromPort<"Diode", Diode>
	& _GetPartFromPort<"Gasoline", Gasoline>
	& _GetPartFromPort<"TimeSensor", TimeSensor>
	& _GetPartFromPort<"Neon", Neon>
	& _GetPartFromPort<"Iron", Iron>
	& _GetPartFromPort<"Cement", Cement>
	& _GetPartFromPort<"StasisField", StasisField>
	& _GetPartFromPort<"Coal", Coal>
	& _GetPartFromPort<"LightBridge", LightBridge>
	& _GetPartFromPort<"Cylinder", Cylinder>
	& _GetPartFromPort<"Ball", Ball>
	& _GetPartFromPort<"FireWood", FireWood>
	& _GetPartFromPort<"TemperatureSensor", TemperatureSensor>
	& _GetPartFromPort<"ProximityButton", ProximityButton>
	& _GetPartFromPort<"MiningLaser", MiningLaser>
	& _GetPartFromPort<"TemperatureGate", TemperatureGate>
	& _GetPartFromPort<"Keyboard", Keyboard>
	& _GetPartFromPort<"TintedGlass", TintedGlass>
	& _GetPartFromPort<"WirelessButton", WirelessButton>
	& _GetPartFromPort<"DarkConverter", DarkConverter>
	& _GetPartFromPort<"Sulfur", Sulfur>
	& _GetPartFromPort<"Beacon", Beacon>
	& _GetPartFromPort<"LightTube", LightTube>
	& _GetPartFromPort<"LifeSensor", LifeSensor>
	& _GetPartFromPort<"StudAligner", StudAligner>
	& _GetPartFromPort<"Explosive", Explosive>
	& _GetPartFromPort<"Stone", Stone>
	& _GetPartFromPort<"Stick", Stick>
	& _GetPartFromPort<"Router", Router>
	& _GetPartFromPort<"SteamTurbine", SteamTurbine>
	& _GetPartFromPort<"SteamEngine", SteamEngine>
	& _GetPartFromPort<"Asphalt", Asphalt>
	& _GetPartFromPort<"Ice", Ice>
	& _GetPartFromPort<"StarMap", StarMap>
	& _GetPartFromPort<"Steam", Steam>
	& _GetPartFromPort<"Stanlium", Stanlium>
	& _GetPartFromPort<"Spotlight", Spotlight>
	& _GetPartFromPort<"Propeller", Propeller>
	& _GetPartFromPort<"Button", Button>
	& _GetPartFromPort<"Battery", Battery>
	& _GetPartFromPort<"Plutonium", Plutonium>
	& _GetPartFromPort<"Coupler", Coupler>
	& _GetPartFromPort<"Brick", Brick>
	& _GetPartFromPort<"Sorter", Sorter>
	& _GetPartFromPort<"Warhead", Warhead>
	& _GetPartFromPort<"Lava", Lava>
	& _GetPartFromPort<"Engine", Engine>
	& _GetPartFromPort<"Transformer", Transformer>
	& _GetPartFromPort<"SmoothReinforcedGlass", SmoothReinforcedGlass>
	& _GetPartFromPort<"SmoothGlass", SmoothGlass>
	& _GetPartFromPort<"Silicon", Silicon>
	& _GetPartFromPort<"Fireworks", Fireworks>
	& _GetPartFromPort<"Cleat", Cleat>
	& _GetPartFromPort<"Seat", Seat>
	& _GetPartFromPort<"Sign", Sign>
	& _GetPartFromPort<"Screen", Screen>
	& _GetPartFromPort<"Scanner", Scanner>
	& _GetPartFromPort<"Sand", Sand>
	& _GetPartFromPort<"Valve", Valve>
	& _GetPartFromPort<"Refinery", Refinery>
	& _GetPartFromPort<"Melter", Melter>
	& _GetPartFromPort<"Ruby", Ruby>
	& _GetPartFromPort<"Freezer", Freezer>
	& _GetPartFromPort<"Rubber", Rubber>
	& _GetPartFromPort<"Hologram", Hologram>
	& _GetPartFromPort<"RoundWedge", RoundWedge>
	& _GetPartFromPort<"Motor", Motor>
	& _GetPartFromPort<"RemoteControl", RemoteControl>
	& _GetPartFromPort<"PowerCell", PowerCell>
	& _GetPartFromPort<"PlasmaCannon", PlasmaCannon>
	& _GetPartFromPort<"Railgun", Railgun>
	& _GetPartFromPort<"Dispenser", Dispenser>
	& _GetPartFromPort<"RustedMetal", RustedMetal>
	& _GetPartFromPort<"Piston", Piston>
	& _GetPartFromPort<"Treads", Treads>
	& _GetPartFromPort<"Marble", Marble>
	& _GetPartFromPort<"Flint", Flint>
	& _GetPartFromPort<"Anchor", Anchor>
	& _GetPartFromPort<"Rail", Rail>
	& _GetPartFromPort<"CrudeWing", CrudeWing>
	& _GetPartFromPort<"Tire", Tire>
	& _GetPartFromPort<"Artillery", Artillery>
	& _GetPartFromPort<"Diamond", Diamond>
	& _GetPartFromPort<"NitrogenOxide", NitrogenOxide>
	& _GetPartFromPort<"Quartz", Quartz>
	& _GetPartFromPort<"HeatValve", HeatValve>
	& _GetPartFromPort<"Microcontroller", Microcontroller>
	& _GetPartFromPort<"AirSupply", AirSupply>
	& _GetPartFromPort<"Constructor", Constructor>
	& _GetPartFromPort<"Pulverizer", Pulverizer>
	& _GetPartFromPort<"Hydrogen", Hydrogen>
	& _GetPartFromPort<"HeatPump", HeatPump>
	& _GetPartFromPort<"Speaker", Speaker>
	& _GetPartFromPort<"Cloth", Cloth>
	& _GetPartFromPort<"Primer", Primer>
	& _GetPartFromPort<"Port", Port>
	& _GetPartFromPort<"PlutoniumCore", PlutoniumCore>
	& _GetPartFromPort<"Magnesium", Magnesium>
	& _GetPartFromPort<"EnergyShield", EnergyShield>
	& _GetPartFromPort<"SoundMuffler", SoundMuffler>
	& _GetPartFromPort<"Jade", Jade>
	& _GetPartFromPort<"Plastic", Plastic>
	& _GetPartFromPort<"StorageSensor", StorageSensor>
	& _GetPartFromPort<"Petroleum", Petroleum>
	& _GetPartFromPort<"Perfectium", Perfectium>
	& _GetPartFromPort<"Goo", Goo>
	& _GetPartFromPort<"Aerogel", Aerogel>
	& _GetPartFromPort<"Microphone", Microphone>
	& _GetPartFromPort<"Gold", Gold>
	& _GetPartFromPort<"ObjectDetector", ObjectDetector>
	& _GetPartFromPort<"Winch", Winch>
	& _GetPartFromPort<"Obamium", Obamium>
	& _GetPartFromPort<"Insulation", Insulation>
	& _GetPartFromPort<"Chute", Chute>
	& _GetPartFromPort<"RTG", RTG>
	& _GetPartFromPort<"Neutronium", Neutronium>
	& _GetPartFromPort<"Rotor", Rotor>
	& _GetPartFromPort<"Controller", Controller>
	& _GetPartFromPort<"Obelisk", Obelisk>
	& _GetPartFromPort<"GravityGenerator", GravityGenerator>
	& _GetPartFromPort<"Kiln", Kiln>
	& _GetPartFromPort<"Aluminum", Aluminum>
	& _GetPartFromPort<"Telescope", Telescope>
	& _GetPartFromPort<"IonRocket", IonRocket>
	& _GetPartFromPort<"Instrument", Instrument>
	& _GetPartFromPort<"BlackBox", BlackBox>
	& _GetPartFromPort<"ImpulseCannon", ImpulseCannon>
	& _GetPartFromPort<"ConveyorBelt", ConveyorBelt>
	& _GetPartFromPort<"CornerRoundWedge", CornerRoundWedge>
	& _GetPartFromPort<"Grass", Grass>
	& _GetPartFromPort<"Reactor", Reactor>
	& _GetPartFromPort<"Titanium", Titanium>
	& _GetPartFromPort<"DarkMatter", DarkMatter>
	& _GetPartFromPort<"Prosthetic", Prosthetic>
	& _GetPartFromPort<"RoundWedge2", RoundWedge2>
	& _GetPartFromPort<"Helium", Helium>
	& _GetPartFromPort<"Heater", Heater>
	& _GetPartFromPort<"Oil", Oil>
	& _GetPartFromPort<"HalfSphere", HalfSphere>
	& _GetPartFromPort<"Uranium", Uranium>
	& _GetPartFromPort<"Gun", Gun>
	& _GetPartFromPort<"Handle", Handle>
	& _GetPartFromPort<"GeigerCounter", GeigerCounter>
	& _GetPartFromPort<"Framewire", Framewire>
	& _GetPartFromPort<"Bin", Bin>
	& _GetPartFromPort<"FloatDevice", FloatDevice>
	& _GetPartFromPort<"CornerWedge", CornerWedge>
	& _GetPartFromPort<"Copper", Copper>
	& _GetPartFromPort<"Tile", Tile>
	& _GetPartFromPort<"Plasma", Plasma>
	& _GetPartFromPort<"TriggerSwitch", TriggerSwitch>
	& _GetPartFromPort<"SolarPanel", SolarPanel>
	& _GetPartFromPort<"Boombox", Boombox>
	& _GetPartFromPort<"EnergyGun", EnergyGun>
	& _GetPartFromPort<"NuclearWaste", NuclearWaste>
	& _GetPartFromPort<"Disk", Disk>
	& _GetPartFromPort<"Igniter", Igniter>
	& _GetPartFromPort<"CornerRoundWedge2", CornerRoundWedge2>
	& _GetPartFromPort<"DeleteSwitch", DeleteSwitch>
	& _GetPartFromPort<"Electromagnet", Electromagnet>
	& _GetPartFromPort<"SpawnPoint", SpawnPoint>
	& _GetPartFromPort<string?, PilotObject>
declare function Beep(frequency: number?)
declare GetParts:
	  _GetParts<"Rocket", Rocket>
	& _GetParts<"DelayWire", DelayWire>
	& _GetParts<"Hatch", Hatch>
	& _GetParts<"Scrapper", Scrapper>
	& _GetParts<"Boiler", Boiler>
	& _GetParts<"Extractor", Extractor>
	& _GetParts<"BurstLaser", BurstLaser>
	& _GetParts<"Apparel", Apparel>
	& _GetParts<"Flamethrower", Flamethrower>
	& _GetParts<"Light", Light>
	& _GetParts<"Cooler", Cooler>
	& _GetParts<"CloningBay", CloningBay>
	& _GetParts<"Food", Food>
	& _GetParts<"Balloon", Balloon>
	& _GetParts<"Lead", Lead>
	& _GetParts<"BlastingCap", BlastingCap>
	& _GetParts<"HeatPipe", HeatPipe>
	& _GetParts<"Filter", Filter>
	& _GetParts<"DarkReactor", DarkReactor>
	& _GetParts<"Antenna", Antenna>
	& _GetParts<"Glass", Glass>
	& _GetParts<"RegionCloaker", RegionCloaker>
	& _GetParts<"ARController", ARController>
	& _GetParts<"Beryllium", Beryllium>
	& _GetParts<"Polysilicon", Polysilicon>
	& _GetParts<"Teleporter", Teleporter>
	& _GetParts<"BallastTank", BallastTank>
	& _GetParts<"CornerTetra", CornerTetra>
	& _GetParts<"Laser", Laser>
	& _GetParts<"Gear", Gear>
	& _GetParts<"WaterCooler", WaterCooler>
	& _GetParts<"ZapWire", ZapWire>
	& _GetParts<"Furnace", Furnace>
	& _GetParts<"Wood", Wood>
	& _GetParts<"Cannon", Cannon>
	& _GetParts<"Switch", Switch>
	& _GetParts<"Cone", Cone>
	& _GetParts<"Wire", Wire>
	& _GetParts<"ReinforcedGlass", ReinforcedGlass>
	& _GetParts<"BurnerGenerator", BurnerGenerator>
	& _GetParts<"Tetrahedron", Tetrahedron>
	& _GetParts<"Pipe", Pipe>
	& _GetParts<"EthernetCable", EthernetCable>
	& _GetParts<"AutomaticLaser", AutomaticLaser>
	& _GetParts<"Wing", Wing>
	& _GetParts<"Faucet", Faucet>
	& _GetParts<"AlienCore", AlienCore>
	& _GetParts<"Fence", Fence>
	& _GetParts<"Modem", Modem>
	& _GetParts<"Wedge", Wedge>
	& _GetParts<"Servo", Servo>
	& _GetParts<"DriveBox", DriveBox>
	& _GetParts<"Water", Water>
	& _GetParts<"MustardGas", MustardGas>
	& _GetParts<"SolarScoop", SolarScoop>
	& _GetParts<"Thruster", Thruster>
	& _GetParts<"VehicleSeat", VehicleSeat>
	& _GetParts<"Sail", Sail>
	& _GetParts<"Gyro", Gyro>
	& _GetParts<"Truss", Truss>
	& _GetParts<"TriggerWire", TriggerWire>
	& _GetParts<"CombustionTurbine", CombustionTurbine>
	& _GetParts<"ExoticMatter", ExoticMatter>
	& _GetParts<"HyperDrive", HyperDrive>
	& _GetParts<"Transporter", Transporter>
	& _GetParts<"TouchScreen", TouchScreen>
	& _GetParts<"ElectricFence", ElectricFence>
	& _GetParts<"Transistor", Transistor>
	& _GetParts<"EnergyBomb", EnergyBomb>
	& _GetParts<"Pump", Pump>
	& _GetParts<"Snow", Snow>
	& _GetParts<"100k", _100k>
	& _GetParts<"TractorBeam", TractorBeam>
	& _GetParts<"Camera", Camera>
	& _GetParts<"TouchSensor", TouchSensor>
	& _GetParts<"Assembler", Assembler>
	& _GetParts<"Hydroponic", Hydroponic>
	& _GetParts<"Radar", Radar>
	& _GetParts<"Tank", Tank>
	& _GetParts<"Diode", Diode>
	& _GetParts<"Gasoline", Gasoline>
	& _GetParts<"TimeSensor", TimeSensor>
	& _GetParts<"Neon", Neon>
	& _GetParts<"Iron", Iron>
	& _GetParts<"Cement", Cement>
	& _GetParts<"StasisField", StasisField>
	& _GetParts<"Coal", Coal>
	& _GetParts<"LightBridge", LightBridge>
	& _GetParts<"Cylinder", Cylinder>
	& _GetParts<"Ball", Ball>
	& _GetParts<"FireWood", FireWood>
	& _GetParts<"TemperatureSensor", TemperatureSensor>
	& _GetParts<"ProximityButton", ProximityButton>
	& _GetParts<"MiningLaser", MiningLaser>
	& _GetParts<"TemperatureGate", TemperatureGate>
	& _GetParts<"Keyboard", Keyboard>
	& _GetParts<"TintedGlass", TintedGlass>
	& _GetParts<"WirelessButton", WirelessButton>
	& _GetParts<"DarkConverter", DarkConverter>
	& _GetParts<"Sulfur", Sulfur>
	& _GetParts<"Beacon", Beacon>
	& _GetParts<"LightTube", LightTube>
	& _GetParts<"LifeSensor", LifeSensor>
	& _GetParts<"StudAligner", StudAligner>
	& _GetParts<"Explosive", Explosive>
	& _GetParts<"Stone", Stone>
	& _GetParts<"Stick", Stick>
	& _GetParts<"Router", Router>
	& _GetParts<"SteamTurbine", SteamTurbine>
	& _GetParts<"SteamEngine", SteamEngine>
	& _GetParts<"Asphalt", Asphalt>
	& _GetParts<"Ice", Ice>
	& _GetParts<"StarMap", StarMap>
	& _GetParts<"Steam", Steam>
	& _GetParts<"Stanlium", Stanlium>
	& _GetParts<"Spotlight", Spotlight>
	& _GetParts<"Propeller", Propeller>
	& _GetParts<"Button", Button>
	& _GetParts<"Battery", Battery>
	& _GetParts<"Plutonium", Plutonium>
	& _GetParts<"Coupler", Coupler>
	& _GetParts<"Brick", Brick>
	& _GetParts<"Sorter", Sorter>
	& _GetParts<"Warhead", Warhead>
	& _GetParts<"Lava", Lava>
	& _GetParts<"Engine", Engine>
	& _GetParts<"Transformer", Transformer>
	& _GetParts<"SmoothReinforcedGlass", SmoothReinforcedGlass>
	& _GetParts<"SmoothGlass", SmoothGlass>
	& _GetParts<"Silicon", Silicon>
	& _GetParts<"Fireworks", Fireworks>
	& _GetParts<"Cleat", Cleat>
	& _GetParts<"Seat", Seat>
	& _GetParts<"Sign", Sign>
	& _GetParts<"Screen", Screen>
	& _GetParts<"Scanner", Scanner>
	& _GetParts<"Sand", Sand>
	& _GetParts<"Valve", Valve>
	& _GetParts<"Refinery", Refinery>
	& _GetParts<"Melter", Melter>
	& _GetParts<"Ruby", Ruby>
	& _GetParts<"Freezer", Freezer>
	& _GetParts<"Rubber", Rubber>
	& _GetParts<"Hologram", Hologram>
	& _GetParts<"RoundWedge", RoundWedge>
	& _GetParts<"Motor", Motor>
	& _GetParts<"RemoteControl", RemoteControl>
	& _GetParts<"PowerCell", PowerCell>
	& _GetParts<"PlasmaCannon", PlasmaCannon>
	& _GetParts<"Railgun", Railgun>
	& _GetParts<"Dispenser", Dispenser>
	& _GetParts<"RustedMetal", RustedMetal>
	& _GetParts<"Piston", Piston>
	& _GetParts<"Treads", Treads>
	& _GetParts<"Marble", Marble>
	& _GetParts<"Flint", Flint>
	& _GetParts<"Anchor", Anchor>
	& _GetParts<"Rail", Rail>
	& _GetParts<"CrudeWing", CrudeWing>
	& _GetParts<"Tire", Tire>
	& _GetParts<"Artillery", Artillery>
	& _GetParts<"Diamond", Diamond>
	& _GetParts<"NitrogenOxide", NitrogenOxide>
	& _GetParts<"Quartz", Quartz>
	& _GetParts<"HeatValve", HeatValve>
	& _GetParts<"Microcontroller", Microcontroller>
	& _GetParts<"AirSupply", AirSupply>
	& _GetParts<"Constructor", Constructor>
	& _GetParts<"Pulverizer", Pulverizer>
	& _GetParts<"Hydrogen", Hydrogen>
	& _GetParts<"HeatPump", HeatPump>
	& _GetParts<"Speaker", Speaker>
	& _GetParts<"Cloth", Cloth>
	& _GetParts<"Primer", Primer>
	& _GetParts<"Port", Port>
	& _GetParts<"PlutoniumCore", PlutoniumCore>
	& _GetParts<"Magnesium", Magnesium>
	& _GetParts<"EnergyShield", EnergyShield>
	& _GetParts<"SoundMuffler", SoundMuffler>
	& _GetParts<"Jade", Jade>
	& _GetParts<"Plastic", Plastic>
	& _GetParts<"StorageSensor", StorageSensor>
	& _GetParts<"Petroleum", Petroleum>
	& _GetParts<"Perfectium", Perfectium>
	& _GetParts<"Goo", Goo>
	& _GetParts<"Aerogel", Aerogel>
	& _GetParts<"Microphone", Microphone>
	& _GetParts<"Gold", Gold>
	& _GetParts<"ObjectDetector", ObjectDetector>
	& _GetParts<"Winch", Winch>
	& _GetParts<"Obamium", Obamium>
	& _GetParts<"Insulation", Insulation>
	& _GetParts<"Chute", Chute>
	& _GetParts<"RTG", RTG>
	& _GetParts<"Neutronium", Neutronium>
	& _GetParts<"Rotor", Rotor>
	& _GetParts<"Controller", Controller>
	& _GetParts<"Obelisk", Obelisk>
	& _GetParts<"GravityGenerator", GravityGenerator>
	& _GetParts<"Kiln", Kiln>
	& _GetParts<"Aluminum", Aluminum>
	& _GetParts<"Telescope", Telescope>
	& _GetParts<"IonRocket", IonRocket>
	& _GetParts<"Instrument", Instrument>
	& _GetParts<"BlackBox", BlackBox>
	& _GetParts<"ImpulseCannon", ImpulseCannon>
	& _GetParts<"ConveyorBelt", ConveyorBelt>
	& _GetParts<"CornerRoundWedge", CornerRoundWedge>
	& _GetParts<"Grass", Grass>
	& _GetParts<"Reactor", Reactor>
	& _GetParts<"Titanium", Titanium>
	& _GetParts<"DarkMatter", DarkMatter>
	& _GetParts<"Prosthetic", Prosthetic>
	& _GetParts<"RoundWedge2", RoundWedge2>
	& _GetParts<"Helium", Helium>
	& _GetParts<"Heater", Heater>
	& _GetParts<"Oil", Oil>
	& _GetParts<"HalfSphere", HalfSphere>
	& _GetParts<"Uranium", Uranium>
	& _GetParts<"Gun", Gun>
	& _GetParts<"Handle", Handle>
	& _GetParts<"GeigerCounter", GeigerCounter>
	& _GetParts<"Framewire", Framewire>
	& _GetParts<"Bin", Bin>
	& _GetParts<"FloatDevice", FloatDevice>
	& _GetParts<"CornerWedge", CornerWedge>
	& _GetParts<"Copper", Copper>
	& _GetParts<"Tile", Tile>
	& _GetParts<"Plasma", Plasma>
	& _GetParts<"TriggerSwitch", TriggerSwitch>
	& _GetParts<"SolarPanel", SolarPanel>
	& _GetParts<"Boombox", Boombox>
	& _GetParts<"EnergyGun", EnergyGun>
	& _GetParts<"NuclearWaste", NuclearWaste>
	& _GetParts<"Disk", Disk>
	& _GetParts<"Igniter", Igniter>
	& _GetParts<"CornerRoundWedge2", CornerRoundWedge2>
	& _GetParts<"DeleteSwitch", DeleteSwitch>
	& _GetParts<"Electromagnet", Electromagnet>
	& _GetParts<"SpawnPoint", SpawnPoint>
	& _GetParts<string?, PilotObject>
declare function GetCPUTime(): number
declare function JSONDecode(data: string): JSON
declare function GetPorts(id: number?): { Port }
declare function TriggerPort(port: Port | number)
declare function JSONEncode(data: JSON): string
declare function logError(message: string, level: number?)
declare pilot: {
	setTimeout: (timeout: number?, thread: thread?) -> (),
	hasRing: (ring: number, thread: thread?) -> boolean,
	setInterrupt: (period: number, callback: () -> ()) -> () -> (),
	getTimeout: (thread: thread?) -> number,
	setRing: (ring: number, thread: thread?) -> (),
	claimThread: (thread: thread) -> boolean,
	getCPUTime: () -> number,
	getRing: (thread: thread?) -> number,
	getThreadParent: (thread: thread?) -> thread?,
	saveRing: (ring: number?) -> () -> (),
}

declare FileSystem: FileSystem
declare SandboxID: string
declare Network: any
declare RawFileSystem: RawFileSystem
declare Microcontroller: Microcontroller
declare SandboxRunID: string

declare class UserInput
	function Configure(self, properties: {
		GamepadEnabled: boolean?,
		VREnabled: boolean?,
		KeyboardEnabled: boolean?,
		Keyboard: { InputObject }?,
		Gamepad: { [Enum.UserInputType]: { InputObject } }?,
		Mouse: { InputObject }?,
		LastInputType: Enum.UserInputType?,
		TouchEnabled: boolean?,
	})

	GamepadEnabled: boolean
	VREnabled: boolean
	KeyboardEnabled: boolean
	Keyboard: { InputObject }
	Gamepad: { [Enum.UserInputType]: { InputObject } }
	Mouse: { InputObject }
	LastInputType: Enum.UserInputType
	TouchEnabled: boolean
end

declare class ARCursor
	WorldPosition: Vector3
	Origin: Vector3
	UserId: number
	Target: PilotObject
	Pressed: boolean
	UserInput: UserInput
	Player: string
	ScreenPosition: Vector2
	UserCFrames: { RightHand: CFrame, LeftHand: CFrame, Head: CFrame }
	Y: number
	X: number
	VirtualWorldPosition: Vector3
	Hit: CFrame
	UnitRay: Ray
	VirtualTarget: BasePart
	MouseDelta: Vector2
	Camera: ARCamera
end

declare class ComponentObject
	function ListEvents(self)
	function ListConfigurables(self)
	function GetObject(self): PilotObject
	function IsDestroyed(self): boolean
	function GetConfigurable(self, configurableName: string): any
	function Trigger(self)
	function ListMethods(self)
	function SetConfigurable(self, configurableName: string, value: any)
	function Click(self)

	Uninstalled: Event<"Uninstalled">
	Configured: Event<"Configured">
	Installed: Event<"Installed">
	Triggered: Event<"Triggered">
	OnClick: Event<"OnClick", (userId: number) -> (), number>
end

declare class ARCamera
	FieldOfViewMode: Enum.FieldOfViewMode
	FieldOfView: number
	CFrame: CFrame
	NearPlaneZ: number
	DiagonalFieldOfView: number
	RenderCFrame: CFrame
	CameraType: Enum.CameraType
	Focus: CFrame
	HeadScale: number
	MaxAxisFieldOfView: number
	ViewportSize: Vector2
	ViewportSizeUI: Vector2
end

declare class PilotObject
	function IsDestroyed(self): boolean
	function GetOwnerId(self): number
	function GetColor(self): Color3
	function Click(self, ...: any): ...any
	function GetNameOfOwnerAsync(self): string
	function GetConfigurables(self): { [string]: ConfigurableData }
	function GetComponent(self, componentName: string)
	function ListComponents(self): { string }
	function HasPermission(self, permission: Permission): boolean
	function CanUninstallComponent(self, componentName: string): boolean
	function HasComponent(self, componentName: string): boolean
	function CanInstallComponent(self, componentName: string): boolean
	function GetShape(self): string?
	function GetEvents(self): { string }
	function GetMethods(self): { [string]: MethodData }
	function GetSize(self): Vector3
	function GetDurability(self): number
	function IsGrounded(self): boolean
	function GetTemperature(self): number

	Durability: number
	CFrame: CFrame
	AssemblyMass: number
	AssemblyLinearVelocity: Vector3
	Health: number
	ClassName: string
	Orientation: Vector3
	AssemblyCenterOfMass: Vector3
	CreatedBy: number
	Heat: number
	Material: Enum.Material
	PartLocked: number?
	Size: Vector3
	Mass: number
	GUID: string
	Temperature: number
	Position: Vector3
	Color: Color3
	Anchored: boolean

	Destroying: Event<"Destroying">
end

declare class DelayWire extends PilotObject
	ClassName: "DelayWire"

	function Configure(self, properties: {
		DelayTime: number?,
	})

	DelayTime: number
end

declare class Scrapper extends PilotObject
	ClassName: "Scrapper"

	Loop: Event<"Loop", (deltaTime: number) -> (), number>
end

declare class Boiler extends PilotObject
	ClassName: "Boiler"

	Loop: Event<"Loop", (deltaTime: number) -> (), number>
end

declare class TemperatureGate extends PilotObject
	ClassName: "TemperatureGate"

	function GetTemp(self): number
	function GetState(self, ...: any): ...any
	function GetTemperature(self): number

	function Configure(self, properties: {
		Inverted: boolean?,
		TemperatureRange: NumberRange?,
		SwitchValue: boolean?,
	})

	Inverted: boolean
	TemperatureRange: NumberRange
	SwitchValue: boolean

	Configured: Event<"Configured", (configurerId: number) -> (), number>
end

declare class BurstLaser extends PilotObject
	ClassName: "BurstLaser"

	OnClick: Event<"OnClick", (clickerId: number) -> (), number>
	Triggered: Event<"Triggered", (otherPart: PilotObject) -> (), PilotObject>
end

declare class Apparel extends PilotObject
	ClassName: "Apparel"

	function Configure(self, properties: {
		Transparency: number?,
		Limb: string?,
	})

	Transparency: number
	Limb: string

	OnClick: Event<"OnClick", (clickerId: number) -> (), number>
	Loop: Event<"Loop", (deltaTime: number) -> (), number>
	Configured: Event<"Configured", (configurerId: number) -> (), number>
end

declare class Flamethrower extends PilotObject
	ClassName: "Flamethrower"

	OnClick: Event<"OnClick", (clickerId: number) -> (), number>
	Loop: Event<"Loop", (deltaTime: number) -> (), number>
	Triggered: Event<"Triggered", (otherPart: PilotObject) -> (), PilotObject>
end

declare class Steam extends PilotObject
	ClassName: "Steam"
end

declare class Cooler extends PilotObject
	ClassName: "Cooler"
end

declare class CloningBay extends PilotObject
	ClassName: "CloningBay"

	function Configure(self, properties: {
		Name: string?,
	})

	Name: string
end

declare class Food extends PilotObject
	ClassName: "Food"

	OnClick: Event<"OnClick", (clickerId: number) -> (), number>
end

declare class Balloon extends PilotObject
	ClassName: "Balloon"

	function Configure(self, properties: {
		Buoyancy: number?,
	})

	Buoyancy: number

	Configured: Event<"Configured", (configurerId: number) -> (), number>
end

declare class Lead extends PilotObject
	ClassName: "Lead"
end

declare class Sail extends PilotObject
	ClassName: "Sail"

	OnClick: Event<"OnClick", (clickerId: number) -> (), number>
	Loop: Event<"Loop", (deltaTime: number) -> (), number>
	Triggered: Event<"Triggered", (otherPart: PilotObject) -> (), PilotObject>
end

declare class BlastingCap extends PilotObject
	ClassName: "BlastingCap"
end

declare class HeatPipe extends PilotObject
	ClassName: "HeatPipe"
end

declare class Filter extends PilotObject
	ClassName: "Filter"

	function Configure(self, properties: {
		Invert: boolean?,
		Filter: string?,
	})

	Invert: boolean
	Filter: string
end

declare class DarkReactor extends PilotObject
	ClassName: "DarkReactor"

	Loop: Event<"Loop", (deltaTime: number) -> (), number>
end

declare class Antenna extends PilotObject
	ClassName: "Antenna"

	function Configure(self, properties: {
		AntennaID: string?,
	})

	AntennaID: string
end

declare class Electromagnet extends PilotObject
	ClassName: "Electromagnet"
end

declare class DeleteSwitch extends PilotObject
	ClassName: "DeleteSwitch"

	Triggered: Event<"Triggered", (otherPart: PilotObject) -> (), PilotObject>
end

declare class CornerRoundWedge2 extends PilotObject
	ClassName: "CornerRoundWedge2"
end

declare class Glass extends PilotObject
	ClassName: "Glass"
end

declare class SolarScoop extends PilotObject
	ClassName: "SolarScoop"

	Loop: Event<"Loop", (deltaTime: number) -> (), number>
end

declare class Beryllium extends PilotObject
	ClassName: "Beryllium"
end

declare class Polysilicon extends PilotObject
	ClassName: "Polysilicon"

	function Configure(self, properties: {
		Frequency: number?,
		PolysiliconMode: PolysiliconMode?,
	})

	Frequency: number
	PolysiliconMode: PolysiliconMode

	Configured: Event<"Configured", (configurerId: number) -> (), number>
end

declare class Teleporter extends PilotObject
	ClassName: "Teleporter"

	function Configure(self, properties: {
		Coordinates: Coordinate?,
		TeleporterID: number?,
		ForceLocalTeleport: boolean?,
	})

	Coordinates: Coordinate
	TeleporterID: number
	ForceLocalTeleport: boolean

	Triggered: Event<"Triggered", (otherPart: PilotObject) -> (), PilotObject>
end

declare class TemperatureSensor extends PilotObject
	ClassName: "TemperatureSensor"

	function GetTemp(self): number

	function Configure(self, properties: {
		TemperatureRange: NumberRange?,
	})

	TemperatureRange: NumberRange

	Loop: Event<"Loop", (deltaTime: number) -> (), number>
end

declare class Water extends PilotObject
	ClassName: "Water"
end

declare class Stick extends PilotObject
	ClassName: "Stick"
end

declare class Laser extends PilotObject
	ClassName: "Laser"

	function Configure(self, properties: {
		DamageOnlyPlayers: boolean?,
	})

	DamageOnlyPlayers: boolean

	Loop: Event<"Loop", (deltaTime: number) -> (), number>
end

declare class Disk extends PilotObject
	ClassName: "Disk"

	function Compress(self, ...: any): ...any
	function ReadAll(self): { [any]: any }
	function Read(self, key: any): any
	function ClearDisk(self)
	function WriteAll(self, ...: any): ...any
	function Decompress(self, ...: any): ...any
	function Clear(self)
	function Write(self, key: any, value: any)
	function ReadEntireDisk(self): { [any]: any }

	Loop: Event<"Loop", (deltaTime: number) -> (), number>
end

declare class Gear extends PilotObject
	ClassName: "Gear"
end

declare class WaterCooler extends PilotObject
	ClassName: "WaterCooler"
end

declare class EnergyGun extends PilotObject
	ClassName: "EnergyGun"
end

declare class Furnace extends PilotObject
	ClassName: "Furnace"

	Loop: Event<"Loop", (deltaTime: number) -> (), number>
end

declare class DarkConverter extends PilotObject
	ClassName: "DarkConverter"

	Loop: Event<"Loop", (deltaTime: number) -> (), number>
end

declare class Wedge extends PilotObject
	ClassName: "Wedge"
end

declare class ExoticMatter extends PilotObject
	ClassName: "ExoticMatter"
end

declare class Cylinder extends PilotObject
	ClassName: "Cylinder"
end

declare class ReinforcedGlass extends PilotObject
	ClassName: "ReinforcedGlass"
end

declare class BurnerGenerator extends PilotObject
	ClassName: "BurnerGenerator"

	Loop: Event<"Loop", (deltaTime: number) -> (), number>
end

declare class Tetrahedron extends PilotObject
	ClassName: "Tetrahedron"
end

declare class Pipe extends PilotObject
	ClassName: "Pipe"
end

declare class EthernetCable extends PilotObject
	ClassName: "EthernetCable"
end

declare class AutomaticLaser extends PilotObject
	ClassName: "AutomaticLaser"

	Loop: Event<"Loop", (deltaTime: number) -> (), number>
end

declare class AlienCore extends PilotObject
	ClassName: "AlienCore"
end

declare class Fence extends PilotObject
	ClassName: "Fence"
end

declare class Cannon extends PilotObject
	ClassName: "Cannon"

	OnClick: Event<"OnClick", (clickerId: number) -> (), number>
	Triggered: Event<"Triggered", (otherPart: PilotObject) -> (), PilotObject>
end

declare class Explosive extends PilotObject
	ClassName: "Explosive"

	Damaged: Event<"Damaged", (...any) -> (), ...any>
	Triggered: Event<"Triggered", (otherPart: PilotObject) -> (), PilotObject>
end

declare class Servo extends PilotObject
	ClassName: "Servo"

	function SetAngle(self, angle: number)

	function Configure(self, properties: {
		ServoSpeed: number?,
		AngleStep: number?,
		Responsiveness: number?,
	})

	ServoSpeed: number
	AngleStep: number
	Responsiveness: number

	Configured: Event<"Configured", (configurerId: number) -> (), number>
end

declare class DriveBox extends PilotObject
	ClassName: "DriveBox"

	function Configure(self, properties: {
		Reversal: boolean?,
		Ratio: number?,
	})

	Reversal: boolean
	Ratio: number

	Loop: Event<"Loop", (deltaTime: number) -> (), number>
end

declare class Copper extends PilotObject
	ClassName: "Copper"
end

declare class MustardGas extends PilotObject
	ClassName: "MustardGas"
end

declare class CornerWedge extends PilotObject
	ClassName: "CornerWedge"
end

declare class Thruster extends PilotObject
	ClassName: "Thruster"

	function Configure(self, properties: {
		Propulsion: number?,
	})

	Propulsion: number

	Configured: Event<"Configured", (configurerId: number) -> (), number>
end

declare class Rocket extends Thruster
	ClassName: "Rocket"
end

declare class FloatDevice extends PilotObject
	ClassName: "FloatDevice"
end

declare class Framewire extends PilotObject
	ClassName: "Framewire"
end

declare class GeigerCounter extends PilotObject
	ClassName: "GeigerCounter"
end

declare class SteamEngine extends PilotObject
	ClassName: "SteamEngine"

	function Configure(self, properties: {
		EngineSpeed: number?,
	})

	EngineSpeed: number

	Configured: Event<"Configured", (configurerId: number) -> (), number>
end

declare class TimeSensor extends PilotObject
	ClassName: "TimeSensor"

	function Configure(self, properties: {
		Time: string?,
	})

	Time: string
end

declare class Tool extends PilotObject

end

declare class Gun extends PilotObject
	ClassName: "Gun"
end

declare class Cone extends PilotObject
	ClassName: "Cone"
end

declare class ElectricFence extends PilotObject
	ClassName: "ElectricFence"

	Loop: Event<"Loop", (deltaTime: number) -> (), number>
end

declare class HalfSphere extends PilotObject
	ClassName: "HalfSphere"
end

declare class EnergyBomb extends PilotObject
	ClassName: "EnergyBomb"

	Damaged: Event<"Damaged", (...any) -> (), ...any>
	Triggered: Event<"Triggered", (otherPart: PilotObject) -> (), PilotObject>
end

declare class Pump extends PilotObject
	ClassName: "Pump"

	function Configure(self, properties: {
		LiquidToPump: string?,
	})

	LiquidToPump: string

	Loop: Event<"Loop", (deltaTime: number) -> (), number>
	Configured: Event<"Configured", (configurerId: number) -> (), number>
end

declare class Light extends PilotObject
	ClassName: "Light"

	function SetColor(self, color: Color3)

	function Configure(self, properties: {
		LightRange: number?,
		Brightness: number?,
		Shadows: boolean?,
	})

	LightRange: number
	Brightness: number
	Shadows: boolean

	Configured: Event<"Configured", (configurerId: number) -> (), number>
end

declare class _100k extends PilotObject
	ClassName: "_100k"

	OnClick: Event<"OnClick", (clickerId: number) -> (), number>
	Triggered: Event<"Triggered", (otherPart: PilotObject) -> (), PilotObject>
end

declare class Heater extends PilotObject
	ClassName: "Heater"
end

declare class Camera extends PilotObject
	ClassName: "Camera"

	function Configure(self, properties: {
		VideoID: number?,
	})

	VideoID: number

	Configured: Event<"Configured", (configurerId: number) -> (), number>
end

declare class CornerTetra extends PilotObject
	ClassName: "CornerTetra"
end

declare class Assembler extends PilotObject
	ClassName: "Assembler"

	function CraftItems(self, items: { string } | { [string]: number })
	function Craft(self, itemName: string): boolean
	function GetInventory(self): { [string]: number }
	function GetRecipe(self, itemName: string): {[string]: number}
	function CalculateCraftingRecipe(self, items: { string } | { [string]: number }): { Power: number, [string]: number }
	function GetCraftCooldown(self): number

	function Configure(self, properties: {
		Assemble: string?,
	})

	Assemble: string

	Loop: Event<"Loop", (deltaTime: number) -> (), number>
	Configured: Event<"Configured", (configurerId: number) -> (), number>
end

declare class Extractor extends PilotObject
	ClassName: "Extractor"

	function Configure(self, properties: {
		MaterialToExtract: string?,
	})

	MaterialToExtract: string

	Loop: Event<"Loop", (deltaTime: number) -> (), number>
end

declare class MiningLaser extends Extractor
	ClassName: "MiningLaser"
end

declare class Button extends PilotObject
	ClassName: "Button"
end

declare class DarkMatter extends PilotObject
	ClassName: "DarkMatter"
end

declare class Diode extends PilotObject
	ClassName: "Diode"
end

declare class Gasoline extends PilotObject
	ClassName: "Gasoline"
end

declare class Sorter extends PilotObject
	ClassName: "Sorter"

	function Configure(self, properties: {
		Resource: string?,
		Rate: number?,
	})

	Resource: string
	Rate: number

	Loop: Event<"Loop", (deltaTime: number) -> (), number>
end

declare class Neon extends PilotObject
	ClassName: "Neon"
end

declare class Modem extends PilotObject
	ClassName: "Modem"

	function PostRequest(self, domain: string, data: string)
	function SendLocalMessage(self, ...: any): ...any
	function SendMessage(self, data: string, id: number?)
	function GetRequest(self, domain: string): string
	function PostAsync(self, url: string, data: string, contentType: Enum.HttpContentType?, compress: boolean?, headers: { [string]: any }?): string
	function GetAsync(self, url: string, nocache: boolean?, headers: { [string]: any }?): string
	function RequestAsync(self, options: ModemRequest): ModemRequestResponse
	function UrlEncode(self, input: string): string
	function RealPostRequest(self, domain: string, data: string, asyncBool: boolean, transformFunction: (...any) -> (), optionalHeaders: { [string]: any }?): { response: string, success: boolean }

	function Configure(self, properties: {
		NetworkID: string?,
	})

	NetworkID: string

	Loop: Event<"Loop", (deltaTime: number) -> (), number>
	MessageSent: Event<"MessageSent", (data: string) -> (), string>
end

declare class Cement extends PilotObject
	ClassName: "Cement"
end

declare class StasisField extends PilotObject
	ClassName: "StasisField"

	Loop: Event<"Loop", (deltaTime: number) -> (), number>
end

declare class Coal extends PilotObject
	ClassName: "Coal"
end

declare class LightBridge extends PilotObject
	ClassName: "LightBridge"

	function Configure(self, properties: {
		BeamColor: Color3?,
	})

	BeamColor: Color3

	Loop: Event<"Loop", (deltaTime: number) -> (), number>
	Configured: Event<"Configured", (configurerId: number) -> (), number>
end

declare class Radar extends PilotObject
	ClassName: "Radar"

	Loop: Event<"Loop", (deltaTime: number) -> (), number>
end

declare class Ball extends PilotObject
	ClassName: "Ball"
end

declare class Engine extends PilotObject
	ClassName: "Engine"

	function Configure(self, properties: {
		EngineSpeed: number?,
	})

	EngineSpeed: number

	Configured: Event<"Configured", (configurerId: number) -> (), number>
end

declare class SmoothReinforcedGlass extends PilotObject
	ClassName: "SmoothReinforcedGlass"
end

declare class ProximityButton extends PilotObject
	ClassName: "ProximityButton"

	function Configure(self, properties: {
		MaxActivationDistance: number?,
		ObjectText: string?,
		RequiresLineOfSight: boolean?,
		HoldDuration: number?,
		GamepadKeyCode: any?,
		KeyboardKeyCode: any?,
	})

	MaxActivationDistance: number
	ObjectText: string
	RequiresLineOfSight: boolean
	HoldDuration: number
	GamepadKeyCode: any
	KeyboardKeyCode: any

	PromptButtonHoldEnded: Event<"PromptButtonHoldEnded", (...any) -> (), ...any>
	PromptTriggered: Event<"PromptTriggered", (...any) -> (), ...any>
	PromptButtonHoldBegan: Event<"PromptButtonHoldBegan", (...any) -> (), ...any>
	PromptTriggerEnded: Event<"PromptTriggerEnded", (...any) -> (), ...any>
	Configured: Event<"Configured", (configurerId: number) -> (), number>
end

declare class CornerRoundWedge extends PilotObject
	ClassName: "CornerRoundWedge"
end

declare class ConveyorBelt extends PilotObject
	ClassName: "ConveyorBelt"

	function Configure(self, properties: {
		ConveyorBeltSpeed: number?,
	})

	ConveyorBeltSpeed: number
end

declare class TintedGlass extends PilotObject
	ClassName: "TintedGlass"
end

declare class WirelessButton extends PilotObject
	ClassName: "WirelessButton"

	OnClick: Event<"OnClick", (clickerId: number) -> (), number>
end

declare class TractorBeam extends PilotObject
	ClassName: "TractorBeam"

	function Configure(self, properties: {
		PowerPercent: number?,
	})

	PowerPercent: number
end

declare class ImpulseCannon extends PilotObject
	ClassName: "ImpulseCannon"

	OnClick: Event<"OnClick", (clickerId: number) -> (), number>
	Triggered: Event<"Triggered", (otherPart: PilotObject) -> (), PilotObject>
end

declare class Beacon extends PilotObject
	ClassName: "Beacon"

	function Configure(self, properties: {
		ShowOnMap: boolean?,
		BeaconName: string?,
	})

	ShowOnMap: boolean
	BeaconName: string

	Configured: Event<"Configured", (configurerId: number) -> (), number>
end

declare class LightTube extends PilotObject
	ClassName: "LightTube"

	function SetColor(self, color: Color3)
end

declare class LifeSensor extends PilotObject
	ClassName: "LifeSensor"

	function ListPlayers(self): { number }
	function GetPlayers(self): { [number]: CFrame }
	function GetReading(self): { [string]: Vector3 }
end

declare class BlackBox extends PilotObject
	ClassName: "BlackBox"

	function GetLogs(self): { RegionLog }

	OnClick: Event<"OnClick", (clickerId: number) -> (), number>
	Loop: Event<"Loop", (deltaTime: number) -> (), number>
end

declare class Instrument extends PilotObject
	ClassName: "Instrument"

	function GetReading(self, typeId: number?): number | Vector3

	function Configure(self, properties: {
		Type: InstrumentType?,
	})

	Type: InstrumentType

	Loop: Event<"Loop", (deltaTime: number) -> (), number>
end

declare class IonRocket extends Thruster
	ClassName: "IonRocket"
end

declare class Scanner extends PilotObject
	ClassName: "Scanner"

	function Locate(self, part: PilotObject, scanners: {Scanner}): Vector3
	function GetDistance(self, part: PilotObject): number
	function GetPartsInRange(self, range: number?, className: string?): {PilotObject}
	function CalculateCost(self, range: number?): number

	function Configure(self, properties: {
		Range: number?,
	})

	Range: number
end

declare class Router extends PilotObject
	ClassName: "Router"

	function Configure(self, properties: {
		RouterID: string?,
	})

	RouterID: string
end

declare class SteamTurbine extends PilotObject
	ClassName: "SteamTurbine"

	function GetEfficiency(self): number
	function GetProductionRate(self): number

	Loop: Event<"Loop", (deltaTime: number) -> (), number>
end

declare class Aluminum extends PilotObject
	ClassName: "Aluminum"
end

declare class Asphalt extends PilotObject
	ClassName: "Asphalt"

	Loop: Event<"Loop", (deltaTime: number) -> (), number>
end

declare class Ice extends PilotObject
	ClassName: "Ice"
end

declare class StarMap extends PilotObject
	ClassName: "StarMap"

	function GetSystems(self): { string }
	function GetBodies(self): { [string]: { PlanetType: PlanetType } }
end

declare class Kiln extends PilotObject
	ClassName: "Kiln"

	Loop: Event<"Loop", (deltaTime: number) -> (), number>
end

declare class GravityGenerator extends PilotObject
	ClassName: "GravityGenerator"

	function Configure(self, properties: {
		Gravity: number?,
	})

	Gravity: number

	Loop: Event<"Loop", (deltaTime: number) -> (), number>
end

declare class Obelisk extends PilotObject
	ClassName: "Obelisk"

	Loop: Event<"Loop", (deltaTime: number) -> (), number>
end

declare class Controller extends PilotObject
	ClassName: "Controller"

	Loop: Event<"Loop", (deltaTime: number) -> (), number>
	Triggered: Event<"Triggered", (otherPart: PilotObject) -> (), PilotObject>
end

declare class Rotor extends PilotObject
	ClassName: "Rotor"

	Loop: Event<"Loop", (deltaTime: number) -> (), number>
end

declare class Neutronium extends PilotObject
	ClassName: "Neutronium"
end

declare class Coupler extends PilotObject
	ClassName: "Coupler"

	function Configure(self, properties: {
		AutoTrigger: boolean?,
		CouplerID: string?,
	})

	AutoTrigger: boolean
	CouplerID: string
end

declare class Brick extends PilotObject
	ClassName: "Brick"

	Loop: Event<"Loop", (deltaTime: number) -> (), number>
end

declare class RTG extends PilotObject
	ClassName: "RTG"
end

declare class Warhead extends PilotObject
	ClassName: "Warhead"

	Damaged: Event<"Damaged", (...any) -> (), ...any>
	Triggered: Event<"Triggered", (otherPart: PilotObject) -> (), PilotObject>
end

declare class Lava extends PilotObject
	ClassName: "Lava"
end

declare class Chute extends PilotObject
	ClassName: "Chute"
end

declare class Transformer extends PilotObject
	ClassName: "Transformer"

	function Configure(self, properties: {
		LoopTime: number?,
	})

	LoopTime: number

	Loop: Event<"Loop", (deltaTime: number) -> (), number>
	Triggered: Event<"Triggered", (otherPart: PilotObject) -> (), PilotObject>
end

declare class Insulation extends PilotObject
	ClassName: "Insulation"
end

declare class Obamium extends PilotObject
	ClassName: "Obamium"
end

declare class RemoteControl extends PilotObject
	ClassName: "RemoteControl"

	function Configure(self, properties: {
		RemoteControlRange: number?,
	})

	RemoteControlRange: number

	OnClick: Event<"OnClick", (clickerId: number) -> (), number>
	Triggered: Event<"Triggered", (otherPart: PilotObject) -> (), PilotObject>
end

declare class Fireworks extends PilotObject
	ClassName: "Fireworks"

	Damaged: Event<"Damaged", (...any) -> (), ...any>
	Triggered: Event<"Triggered", (otherPart: PilotObject) -> (), PilotObject>
end

declare class Cleat extends PilotObject
	ClassName: "Cleat"
end

declare class Seat extends PilotObject
	ClassName: "Seat"
end

declare class ObjectDetector extends PilotObject
	ClassName: "ObjectDetector"

	function GetLastHitPart(self): PilotObject
	function GetLastHitData(self)

	function Configure(self, properties: {
		TriggerAtDistance: Vector2?,
		MaxDistance: number?,
	})

	TriggerAtDistance: Vector2
	MaxDistance: number
end

declare class Treads extends PilotObject
	ClassName: "Treads"

	Loop: Event<"Loop", (deltaTime: number) -> (), number>
end

declare class Microphone extends PilotObject
	ClassName: "Microphone"

	Chatted: Event<"Chatted", (userId: number, message: string) -> (), number, string>
end

declare class Anchor extends PilotObject
	ClassName: "Anchor"

	function Configure(self, properties: {
		Anchored: boolean?,
	})

	Anchored: boolean

	OnClick: Event<"OnClick", (clickerId: number) -> (), number>
	Triggered: Event<"Triggered", (otherPart: PilotObject) -> (), PilotObject>
	Configured: Event<"Configured", (configurerId: number) -> (), number>
end

declare class Goo extends PilotObject
	ClassName: "Goo"
end

declare class Melter extends PilotObject
	ClassName: "Melter"

	Loop: Event<"Loop", (deltaTime: number) -> (), number>
end

declare class Perfectium extends PilotObject
	ClassName: "Perfectium"
end

declare class Freezer extends PilotObject
	ClassName: "Freezer"

	Loop: Event<"Loop", (deltaTime: number) -> (), number>
end

declare class Petroleum extends PilotObject
	ClassName: "Petroleum"
end

declare class StorageSensor extends PilotObject
	ClassName: "StorageSensor"

	function Configure(self, properties: {
		QuantityRange: NumberRange?,
	})

	QuantityRange: NumberRange

	Loop: Event<"Loop", (deltaTime: number) -> (), number>
end

declare class Ruby extends PilotObject
	ClassName: "Ruby"
end

declare class Jade extends PilotObject
	ClassName: "Jade"
end

declare class HeatValve extends PilotObject
	ClassName: "HeatValve"

	function Configure(self, properties: {
		SwitchValue: boolean?,
	})

	SwitchValue: boolean

	OnClick: Event<"OnClick", (clickerId: number) -> (), number>
	Configured: Event<"Configured", (configurerId: number) -> (), number>
end

declare class Transistor extends PilotObject
	ClassName: "Transistor"

	function Configure(self, properties: {
		Inverted: boolean?,
	})

	Inverted: boolean

	OnClick: Event<"OnClick", (clickerId: number) -> (), number>
	Configured: Event<"Configured", (configurerId: number) -> (), number>
end

declare class Railgun extends PilotObject
	ClassName: "Railgun"

	Damaged: Event<"Damaged", (...any) -> (), ...any>
	Loop: Event<"Loop", (deltaTime: number) -> (), number>
	Triggered: Event<"Triggered", (otherPart: PilotObject) -> (), PilotObject>
end

declare class Dispenser extends PilotObject
	ClassName: "Dispenser"

	function Dispense(self)

	function Configure(self, properties: {
		Filter: string?,
	})

	Filter: string

	OnClick: Event<"OnClick", (clickerId: number) -> (), number>
	Loop: Event<"Loop", (deltaTime: number) -> (), number>
	Triggered: Event<"Triggered", (otherPart: PilotObject) -> (), PilotObject>
	Configured: Event<"Configured", (configurerId: number) -> (), number>
end

declare class Faucet extends Dispenser
	ClassName: "Faucet"
end

declare class RustedMetal extends PilotObject
	ClassName: "RustedMetal"
end

declare class Piston extends PilotObject
	ClassName: "Piston"

	function SetPosition(self, ...: any): ...any

	function Configure(self, properties: {
		Position1: number?,
		Speed: number?,
		Position2: number?,
	})

	Position1: number
	Speed: number
	Position2: number

	Configured: Event<"Configured", (configurerId: number) -> (), number>
end

declare class Wing extends PilotObject
	ClassName: "Wing"

	Loop: Event<"Loop", (deltaTime: number) -> (), number>
end

declare class Marble extends PilotObject
	ClassName: "Marble"
end

declare class Flint extends PilotObject
	ClassName: "Flint"
end

declare class Wire extends PilotObject
	ClassName: "Wire"
end

declare class EnergyShield extends PilotObject
	ClassName: "EnergyShield"

	function GetShieldHealth(self): number
	function CalculateCost(self, ...: any): ...any

	function Configure(self, properties: {
		RegenerationSpeed: number?,
		ShieldStrength: number?,
		ShieldRadius: number?,
	})

	RegenerationSpeed: number
	ShieldStrength: number
	ShieldRadius: number

	Loop: Event<"Loop", (deltaTime: number) -> (), number>
	Configured: Event<"Configured", (configurerId: number) -> (), number>
end

declare class CrudeWing extends PilotObject
	ClassName: "CrudeWing"

	Loop: Event<"Loop", (deltaTime: number) -> (), number>
end

declare class Tire extends PilotObject
	ClassName: "Tire"
end

declare class Artillery extends PilotObject
	ClassName: "Artillery"

	OnClick: Event<"OnClick", (clickerId: number) -> (), number>
	Triggered: Event<"Triggered", (otherPart: PilotObject) -> (), PilotObject>
end

declare class StudAligner extends PilotObject
	ClassName: "StudAligner"

	OnClick: Event<"OnClick", (clickerId: number) -> (), number>
	Triggered: Event<"Triggered", (otherPart: PilotObject) -> (), PilotObject>
end

declare class Magnesium extends PilotObject
	ClassName: "Magnesium"
end

declare class PlutoniumCore extends PilotObject
	ClassName: "PlutoniumCore"
end

declare class Microcontroller extends PilotObject
	ClassName: "Microcontroller"

	function Shutdown(self)
	function Send(self, ...: any)
	function Receive(self): (Microcontroller, ...any)

	function Configure(self, properties: {
		Code: string?,
		StartOnSpawn: boolean?,
	})

	Code: string
	StartOnSpawn: boolean

	OnClick: Event<"OnClick", (clickerId: number) -> (), number>
	Loop: Event<"Loop", (deltaTime: number) -> (), number>
	Configured: Event<"Configured", (configurerId: number) -> (), number>
end

declare class AirSupply extends PilotObject
	ClassName: "AirSupply"

	Loop: Event<"Loop", (deltaTime: number) -> (), number>
end

declare class Plutonium extends PilotObject
	ClassName: "Plutonium"
end

declare class Port extends PilotObject
	ClassName: "Port"

	function Configure(self, properties: {
		PortID: number?,
	})

	PortID: number

	Triggered: Event<"Triggered", (otherPart: PilotObject) -> (), PilotObject>
end

declare class Primer extends PilotObject
	ClassName: "Primer"
end

declare class HeatPump extends PilotObject
	ClassName: "HeatPump"

	function Configure(self, properties: {
		TransferRate: number?,
	})

	TransferRate: number

	Loop: Event<"Loop", (deltaTime: number) -> (), number>
end

declare class Speaker extends PilotObject
	ClassName: "Speaker"

	function LoadSound(self, soundId: number): Sound
	function Chat(self, message: string)
	function ClearSounds(self)
	function PlaySound(self, soundId: number?)

	function Configure(self, properties: {
		Audio: string?,
		Pitch: number?,
		Volume: number?,
	})

	Audio: string
	Pitch: number
	Volume: number

	Triggered: Event<"Triggered", (otherPart: PilotObject) -> (), PilotObject>
	Configured: Event<"Configured", (configurerId: number) -> (), number>
end

declare class Hydrogen extends PilotObject
	ClassName: "Hydrogen"
end

declare class Cloth extends PilotObject
	ClassName: "Cloth"
end

declare class Pulverizer extends PilotObject
	ClassName: "Pulverizer"
end

declare class Constructor extends PilotObject
	ClassName: "Constructor"

	function CalculateModelRecipe(self, ...: any): ...any

	function Configure(self, properties: {
		Autolock: boolean?,
		ModelCode: string?,
		RelativeToConstructor: boolean?,
	})

	Autolock: boolean
	ModelCode: string
	RelativeToConstructor: boolean

	Triggered: Event<"Triggered", (otherPart: PilotObject) -> (), PilotObject>
	Configured: Event<"Configured", (configurerId: number) -> (), number>
end

declare class Stone extends PilotObject
	ClassName: "Stone"
end

declare class SoundMuffler extends PilotObject
	ClassName: "SoundMuffler"
end

declare class TouchSensor extends PilotObject
	ClassName: "TouchSensor"

	Touched: Event<"Touched">
end

declare class Quartz extends PilotObject
	ClassName: "Quartz"
end

declare class VehicleSeat extends PilotObject
	ClassName: "VehicleSeat"

	function Configure(self, properties: {
		Mode: "Horizontal" | "Yaw/Pitch" | "Full" | "Mouse"?,
		Speed: number?,
		Enabled: boolean?,
	})

	Mode: "Horizontal" | "Yaw/Pitch" | "Full" | "Mouse"
	Speed: number
	Enabled: boolean

	Configured: Event<"Configured", (configurerId: number) -> (), number>
end

declare class NitrogenOxide extends PilotObject
	ClassName: "NitrogenOxide"
end

declare class Diamond extends PilotObject
	ClassName: "Diamond"
end

declare class Rail extends PilotObject
	ClassName: "Rail"

	function SetPosition(self, depth: number)

	function Configure(self, properties: {
		Position1: number?,
		Position2: number?,
		TweenTime: number?,
	})

	Position1: number
	Position2: number
	TweenTime: number
end

declare class Aerogel extends PilotObject
	ClassName: "Aerogel"
end

declare class RoundWedge extends PilotObject
	ClassName: "RoundWedge"
end

declare class Gold extends PilotObject
	ClassName: "Gold"
end

declare class PlasmaCannon extends PilotObject
	ClassName: "PlasmaCannon"

	OnClick: Event<"OnClick", (clickerId: number) -> (), number>
	Triggered: Event<"Triggered", (otherPart: PilotObject) -> (), PilotObject>
end

declare class Winch extends PilotObject
	ClassName: "Winch"

	function Configure(self, properties: {
		MaxLength: number?,
		MinLength: number?,
		DeltaLength: number?,
	})

	MaxLength: number
	MinLength: number
	DeltaLength: number
end

declare class Refinery extends PilotObject
	ClassName: "Refinery"

	Loop: Event<"Loop", (deltaTime: number) -> (), number>
end

declare class TriggerWire extends PilotObject
	ClassName: "TriggerWire"
end

declare class ZapWire extends PilotObject
	ClassName: "ZapWire"
end

declare class Rubber extends PilotObject
	ClassName: "Rubber"
end

declare class Transporter extends PilotObject
	ClassName: "Transporter"

	function Configure(self, properties: {
		TransporterID: string?,
	})

	TransporterID: string
end

declare class Hydroponic extends PilotObject
	ClassName: "Hydroponic"

	function Configure(self, properties: {
		Grow: string?,
	})

	Grow: string

	Loop: Event<"Loop", (deltaTime: number) -> (), number>
end

declare class Plastic extends PilotObject
	ClassName: "Plastic"

	Loop: Event<"Loop", (deltaTime: number) -> (), number>
end

declare class Motor extends PilotObject
	ClassName: "Motor"

	function Configure(self, properties: {
		Power: number?,
		Ratio: number?,
	})

	Power: number
	Ratio: number

	Configured: Event<"Configured", (configurerId: number) -> (), number>
end

declare class Sand extends PilotObject
	ClassName: "Sand"
end

declare class Gyro extends PilotObject
	ClassName: "Gyro"

	function PointAt(self, position: Vector3, up: Vector3?)
	function PointAlong(self, direction: Vector3, up: Vector3?)

	function Configure(self, properties: {
		DisableWhenUnpowered: boolean?,
		TriggerWhenSeeked: boolean?,
		MaxTorque: Vector3?,
		Seek: string?,
	})

	DisableWhenUnpowered: boolean
	TriggerWhenSeeked: boolean
	MaxTorque: Vector3
	Seek: string

	Configured: Event<"Configured", (configurerId: number) -> (), number>
	Loop: Event<"Loop", (deltaTime: number) -> (), number>
end

declare class Telescope extends PilotObject
	ClassName: "Telescope"

	function GetCoordinate(self): RegionInfo
	function GetCurrentCoordinate(self): Coordinate
	function WhenRegionLoads(self, callback: (regionInfo: CompleteRegionInfo) -> ())

	function Configure(self, properties: {
		ViewCoordinates: Coordinate?,
	})

	ViewCoordinates: Coordinate

	OnClick: Event<"OnClick", (clickerId: number) -> (), number>
	Triggered: Event<"Triggered", (otherPart: PilotObject) -> (), PilotObject>
	Configured: Event<"Configured", (configurerId: number) -> (), number>
end

declare class Screen extends PilotObject
	ClassName: "Screen"

	function GetDimensions(self): Vector2
	CreateElement:
		  _CreateElement<"ShirtGraphic", ShirtGraphic>
		& _CreateElement<"LocalizationTable", LocalizationTable>
		& _CreateElement<"Highlight", Highlight>
		& _CreateElement<"MeshPart", MeshPart>
		& _CreateElement<"AngularVelocity", AngularVelocity>
		& _CreateElement<"CylinderHandleAdornment", CylinderHandleAdornment>
		& _CreateElement<"BallSocketConstraint", BallSocketConstraint>
		& _CreateElement<"BrickColorValue", BrickColorValue>
		& _CreateElement<"EulerRotationCurve", EulerRotationCurve>
		& _CreateElement<"Attachment", Attachment>
		& _CreateElement<"AudioEmitter", AudioEmitter>
		& _CreateElement<"AudioDeviceOutput", AudioDeviceOutput>
		& _CreateElement<"PitchShiftSoundEffect", PitchShiftSoundEffect>
		& _CreateElement<"ImageButton", ImageButton>
		& _CreateElement<"DialogChoice", DialogChoice>
		& _CreateElement<"Handles", Handles>
		& _CreateElement<"Weld", JointInstance>
		& _CreateElement<"CylindricalConstraint", CylindricalConstraint>
		& _CreateElement<"WireframeHandleAdornment", WireframeHandleAdornment>
		& _CreateElement<"TerrainDetail", TerrainDetail>
		& _CreateElement<"AudioChorus", AudioChorus>
		& _CreateElement<"Smoke", Smoke>
		& _CreateElement<"SurfaceGui", SurfaceGui>
		& _CreateElement<"Accessory", Accessory>
		& _CreateElement<"LineForce", LineForce>
		& _CreateElement<"UIScale", UIScale>
		& _CreateElement<"Pants", Pants>
		& _CreateElement<"CFrameValue", CFrameValue>
		& _CreateElement<"ImageLabel", ImageLabel>
		& _CreateElement<"Animation", Animation>
		& _CreateElement<"UIListLayout", UIListLayout>
		& _CreateElement<"Torque", Torque>
		& _CreateElement<"UniversalConstraint", UniversalConstraint>
		& _CreateElement<"PointLight", PointLight>
		& _CreateElement<"EqualizerSoundEffect", EqualizerSoundEffect>
		& _CreateElement<"Actor" | "WorldModel" | "Model", Model & any>
		& _CreateElement<"VelocityMotor", VelocityMotor>
		& _CreateElement<"SurfaceSelection", SurfaceSelection>
		& _CreateElement<"ReflectionMetadataClass", ReflectionMetadataClass>
		& _CreateElement<"CanvasGroup", CanvasGroup>
		& _CreateElement<"SpotLight", SpotLight>
		& _CreateElement<"AudioReverb", AudioReverb>
		& _CreateElement<"Bone", Bone>
		& _CreateElement<"Tool", Tool>
		& _CreateElement<"Texture", Texture>
		& _CreateElement<"ReflectionMetadataMember" | "ReflectionMetadataEnumItem" | "ReflectionMetadataEnum", ReflectionMetadataItem & any>
		& _CreateElement<"LocalScript" | "Script", Script & any>
		& _CreateElement<"StyleRule", StyleRule>
		& _CreateElement<"RayValue", RayValue>
		& _CreateElement<"LineHandleAdornment", LineHandleAdornment>
		& _CreateElement<"NegateOperation" | "IntersectOperation" | "UnionOperation" | "PartOperation", PartOperation & any>
		& _CreateElement<"DepthOfFieldEffect", DepthOfFieldEffect>
		& _CreateElement<"TextBox", TextBox>
		& _CreateElement<"EditableMesh" | "RobloxEditableMesh", EditableMesh & any>
		& _CreateElement<"DistortionSoundEffect", DistortionSoundEffect>
		& _CreateElement<"UIPadding", UIPadding>
		& _CreateElement<"CornerWedgePart" | "WedgePart", BasePart & any>
		& _CreateElement<"BuoyancySensor", BuoyancySensor>
		& _CreateElement<"BillboardGui", BillboardGui>
		& _CreateElement<"AudioListener", AudioListener>
		& _CreateElement<"Team", Team>
		& _CreateElement<"UIStroke", UIStroke>
		& _CreateElement<"FlangeSoundEffect", FlangeSoundEffect>
		& _CreateElement<"ControllerManager", ControllerManager>
		& _CreateElement<"EchoSoundEffect", EchoSoundEffect>
		& _CreateElement<"ViewportFrame", ViewportFrame>
		& _CreateElement<"SpawnLocation", SpawnLocation>
		& _CreateElement<"BlurEffect", BlurEffect>
		& _CreateElement<"UITextSizeConstraint", UITextSizeConstraint>
		& _CreateElement<"ScreenGui", ScreenGui>
		& _CreateElement<"Dialog", Dialog>
		& _CreateElement<"AudioCompressor", AudioCompressor>
		& _CreateElement<"NoCollisionConstraint", NoCollisionConstraint>
		& _CreateElement<"ForceField", ForceField>
		& _CreateElement<"NumberPose", NumberPose>
		& _CreateElement<"UIAspectRatioConstraint", UIAspectRatioConstraint>
		& _CreateElement<"WeldConstraint", WeldConstraint>
		& _CreateElement<"FileMesh", FileMesh>
		& _CreateElement<"Shirt", Shirt>
		& _CreateElement<"PrismaticConstraint", SlidingBallConstraint>
		& _CreateElement<"Animator", Animator>
		& _CreateElement<"Color3Value", Color3Value>
		& _CreateElement<"Clouds", Clouds>
		& _CreateElement<"RenderingTest", RenderingTest>
		& _CreateElement<"UIFlexItem", UIFlexItem>
		& _CreateElement<"Seat", Seat>
		& _CreateElement<"BubbleChatMessageProperties", BubbleChatMessageProperties>
		& _CreateElement<"DebuggerWatch", DebuggerWatch>
		& _CreateElement<"BlockMesh", DataModelMesh>
		& _CreateElement<"ArcHandles", ArcHandles>
		& _CreateElement<"AtmosphereSensor" | "FluidForceSensor", SensorBase & any>
		& _CreateElement<"TextLabel", TextLabel>
		& _CreateElement<"PathfindingModifier", PathfindingModifier>
		& _CreateElement<"GetTextBoundsParams", GetTextBoundsParams>
		& _CreateElement<"AudioDeviceInput", AudioDeviceInput>
		& _CreateElement<"PlaneConstraint" | "RigidConstraint", Constraint & any>
		& _CreateElement<"MaterialVariant", MaterialVariant>
		& _CreateElement<"EditableImage" | "RobloxEditableImage", EditableImage & any>
		& _CreateElement<"DragDetector", DragDetector>
		& _CreateElement<"ImageHandleAdornment", ImageHandleAdornment>
		& _CreateElement<"ParticleEmitter", ParticleEmitter>
		& _CreateElement<"AudioEqualizer", AudioEqualizer>
		& _CreateElement<"AlignOrientation", AlignOrientation>
		& _CreateElement<"UIPageLayout", UIPageLayout>
		& _CreateElement<"SpecialMesh", SpecialMesh>
		& _CreateElement<"StringValue", StringValue>
		& _CreateElement<"ObjectValue", ObjectValue>
		& _CreateElement<"CharacterMesh", CharacterMesh>
		& _CreateElement<"VideoDeviceInput", VideoDeviceInput>
		& _CreateElement<"AudioPitchShifter", AudioPitchShifter>
		& _CreateElement<"TextChatMessageProperties", TextChatMessageProperties>
		& _CreateElement<"AudioEcho", AudioEcho>
		& _CreateElement<"AudioDistortion", AudioDistortion>
		& _CreateElement<"SphereHandleAdornment", SphereHandleAdornment>
		& _CreateElement<"AudioFader", AudioFader>
		& _CreateElement<"AudioPlayer", AudioPlayer>
		& _CreateElement<"BloomEffect", BloomEffect>
		& _CreateElement<"Beam", Beam>
		& _CreateElement<"AnimationConstraint", AnimationConstraint>
		& _CreateElement<"AudioFlanger", AudioFlanger>
		& _CreateElement<"ParabolaAdornment", PVAdornment>
		& _CreateElement<"BodyColors", BodyColors>
		& _CreateElement<"Trail", Trail>
		& _CreateElement<"Sky", Sky>
		& _CreateElement<"AudioFilter", AudioFilter>
		& _CreateElement<"HapticEffect", HapticEffect>
		& _CreateElement<"KeyframeSequence" | "CurveAnimation", AnimationClip & any>
		& _CreateElement<"RopeConstraint", RopeConstraint>
		& _CreateElement<"Frame", Frame>
		& _CreateElement<"TextChatCommand", TextChatCommand>
		& _CreateElement<"Player", Player>
		& _CreateElement<"StudioAttachment", StudioAttachment>
		& _CreateElement<"KeyframeMarker", KeyframeMarker>
		& _CreateElement<"SelectionBox", SelectionBox>
		& _CreateElement<"VehicleSeat", VehicleSeat>
		& _CreateElement<"Sound", Sound>
		& _CreateElement<"VideoFrame", VideoFrame>
		& _CreateElement<"Camera", Camera>
		& _CreateElement<"ProximityPrompt", ProximityPrompt>
		& _CreateElement<"IntValue", IntValue>
		& _CreateElement<"AudioSearchParams", AudioSearchParams>
		& _CreateElement<"SelectionSphere", SelectionSphere>
		& _CreateElement<"TrussPart", TrussPart>
		& _CreateElement<"Part", Part>
		& _CreateElement<"ControllerPartSensor", ControllerPartSensor>
		& _CreateElement<"CompressorSoundEffect", CompressorSoundEffect>
		& _CreateElement<"ChorusSoundEffect", ChorusSoundEffect>
		& _CreateElement<"Atmosphere", Atmosphere>
		& _CreateElement<"UIDragDetector", UIDragDetector>
		& _CreateElement<"Sparkles", Sparkles>
		& _CreateElement<"Vector3Value", Vector3Value>
		& _CreateElement<"Motor" | "Motor6D", Motor & any>
		& _CreateElement<"ReverbSoundEffect", ReverbSoundEffect>
		& _CreateElement<"TorsionSpringConstraint", TorsionSpringConstraint>
		& _CreateElement<"UIGridLayout", UIGridLayout>
		& _CreateElement<"VectorForce", VectorForce>
		& _CreateElement<"AdGui", AdGui>
		& _CreateElement<"SpringConstraint", SpringConstraint>
		& _CreateElement<"Fire", Fire>
		& _CreateElement<"Accoutrement", Accoutrement>
		& _CreateElement<"ColorGradingEffect", ColorGradingEffect>
		& _CreateElement<"SunRaysEffect", SunRaysEffect>
		& _CreateElement<"SoundGroup", SoundGroup>
		& _CreateElement<"Wire", Wire>
		& _CreateElement<"Explosion", Explosion>
		& _CreateElement<"StyleLink", StyleLink>
		& _CreateElement<"SurfaceAppearance", SurfaceAppearance>
		& _CreateElement<"StyleDerive", StyleDerive>
		& _CreateElement<"ConeHandleAdornment", ConeHandleAdornment>
		& _CreateElement<"TremoloSoundEffect", TremoloSoundEffect>
		& _CreateElement<"Path2D", Path2D>
		& _CreateElement<"UISizeConstraint", UISizeConstraint>
		& _CreateElement<"Decal", Decal>
		& _CreateElement<"BoolValue", BoolValue>
		& _CreateElement<"AudioAnalyzer", AudioAnalyzer>
		& _CreateElement<"Pose", Pose>
		& _CreateElement<"ColorCorrectionEffect", ColorCorrectionEffect>
		& _CreateElement<"RodConstraint", RodConstraint>
		& _CreateElement<"UITableLayout", UITableLayout>
		& _CreateElement<"ClickDetector", ClickDetector>
		& _CreateElement<"LinearVelocity", LinearVelocity>
		& _CreateElement<"UICorner", UICorner>
		& _CreateElement<"AlignPosition", AlignPosition>
		& _CreateElement<"NumberValue", NumberValue>
		& _CreateElement<"HingeConstraint", HingeConstraint>
		& _CreateElement<"SurfaceLight", SurfaceLight>
		& _CreateElement<"IKControl", IKControl>
		& _CreateElement<"UIGradient", UIGradient>
		& _CreateElement<"TextButton", TextButton>
		& _CreateElement<"PathfindingLink", PathfindingLink>
		& _CreateElement<"BoxHandleAdornment", BoxHandleAdornment>
		& _CreateElement<"ScrollingFrame", ScrollingFrame>
		& _CreateElement<"Keyframe", Keyframe>
		& _CreateElement<"Vector3Curve" | "GuiMain" | "HumanoidController" | "ReflectionMetadataClasses" | "Hole" | "WorkspaceAnnotation" | "CSGDictionaryService" | "BindableEvent" | "SelectionPartLasso" | "RTAnimationTracker" | "HumanoidDescription" | "OperationGraph" | "BodyGyro" | "WrapLayer" | "Folder" | "FlagStand" | "PartOperationAsset" | "SkateboardController" | "BindableFunction" | "ReflectionMetadataCallbacks" | "Plane" | "FaceControls" | "InternalSyncItem" | "StarterGear" | "Glue" | "ManualWeld" | "Hat" | "WrapTarget" | "Humanoid" | "Configuration" | "StyleSheet" | "HopperBin" | "FlyweightService" | "MotorFeature" | "DataStoreSetOptions" | "ReflectionMetadataYieldFunctions" | "AirController" | "VehicleController" | "HeightmapImporterService" | "ManualGlue" | "AnimationRigData" | "Backpack" | "ClimbController" | "WrapDeformer" | "FloatCurve" | "RotationCurve" | "ProximityPromptService" | "CylinderMesh" | "Rotate" | "RemoteEvent" | "BodyPartDescription" | "DoubleConstrainedValue" | "RocketPropulsion" | "VisualizationMode" | "Breakpoint" | "FunctionalTest" | "TerrainRegion" | "IntConstrainedValue" | "BinaryStringValue" | "VirtualInputManager" | "SkateboardPlatform" | "Hint" | "DataStoreGetOptions" | "NonReplicatedCSGDictionaryService" | "TrackerStreamAnimation" | "ModuleScript" | "AdPortal" | "VisualizationModeCategory" | "ReflectionMetadata" | "TextChannel" | "FloorWire" | "ExplorerFilterInstance" | "ReflectionMetadataEvents" | "TestService" | "StudioCallout" | "Message" | "AdvancedDragger" | "StandalonePluginScripts" | "AnimationController" | "Skin" | "SelectionPointLasso" | "Snap" | "BodyAngularVelocity" | "RemoteFunction" | "ReflectionMetadataProperties" | "ReflectionMetadataFunctions" | "Annotation" | "TeleportOptions" | "ReflectionMetadataEnums" | "GroundController" | "BodyForce" | "MarkerCurve" | "AccessoryDescription" | "PluginCapabilities" | "DataStoreIncrementOptions" | "BodyPosition" | "PluginAction" | "Noise" | "UnreliableRemoteEvent" | "BodyVelocity" | "BodyThrust" | "RotateP" | "CustomEventReceiver" | "Flag" | "MemoryStoreService" | "ExperienceInviteOptions" | "CustomEvent" | "HiddenSurfaceRemovalAsset" | "Tween" | "SwimController" | "DataStoreOptions" | "RotateV" | "Dragger" | string, Instance & any>
	function ClearElements(self)
	function GetCanvas(self): Frame

	function Configure(self, properties: {
		VideoID: number?,
	})

	VideoID: number

	Configured: Event<"Configured", (configurerId: number) -> (), number>
end

declare class ARController extends Screen
	ClassName: "ARController"

	function ClearElements3D(self)
	function GetCursors(self): { [string]: ARCursor }
	function GetCursor(self): ARCursor
	function CreateElement3D(self, shape: "Ball" | "Block" | "Cylinder" | "Wedge" | "CornerWedge", properties: { [string]: any }): Part

	function Configure(self, properties: {
		Transparency: number?,
	})

	Transparency: number

	CursorPressed: Event<"CursorPressed", (cursor: ARCursor) -> (), ARCursor>
	OnClick: Event<"OnClick", (clickerId: number) -> (), number>
	CursorMoved: Event<"CursorMoved", (cursor: ARCursor) -> (), ARCursor>
	UserInput: Event<"UserInput", (inputObject: InputObject, userId: number) -> (), InputObject, number>
	CursorReleased: Event<"CursorReleased", (cursor: ARCursor) -> (), ARCursor>
	KeyPressed: Event<"KeyPressed", (userId: number, keyName: string) -> (), number, string>
	Configured: Event<"Configured", (configurerId: number) -> (), number>
end

declare class TouchScreen extends Screen
	ClassName: "TouchScreen"

	function GetCursor(self, username: string)
	function GetCursors(self): { [string]: Cursor }

	function Configure(self, properties: {
		VideoID: number?,
	})

	VideoID: number

	CursorMoved: Event<"CursorMoved", (cursor: Cursor) -> (), Cursor>
	CursorPressed: Event<"CursorPressed", (cursor: Cursor) -> (), Cursor>
	CursorReleased: Event<"CursorReleased", (cursor: Cursor) -> (), Cursor>
	Configured: Event<"Configured", (configurerId: number) -> (), number>
end

declare class Sign extends PilotObject
	ClassName: "Sign"

	function Configure(self, properties: {
		SignText: string?,
		TextColor: Color3?,
		TextFont: any?,
	})

	SignText: string
	TextColor: Color3
	TextFont: any

	Configured: Event<"Configured", (configurerId: number) -> (), number>
end

declare class Truss extends PilotObject
	ClassName: "Truss"
end

declare class Iron extends PilotObject
	ClassName: "Iron"
end

declare class Sulfur extends PilotObject
	ClassName: "Sulfur"
end

declare class SmoothGlass extends PilotObject
	ClassName: "SmoothGlass"
end

declare class Grass extends PilotObject
	ClassName: "Grass"
end

declare class Reactor extends PilotObject
	ClassName: "Reactor"

	function GetFuel(self): { number }
	function GetEfficiency(self): number
	function GetTemp(self): number

	function Configure(self, properties: {
		Alarm: boolean?,
	})

	Alarm: boolean

	Loop: Event<"Loop", (deltaTime: number) -> (), number>
end

declare class Titanium extends PilotObject
	ClassName: "Titanium"
end

declare class Hologram extends PilotObject
	ClassName: "Hologram"

	function Configure(self, properties: {
		UserId: number?,
	})

	UserId: number

	Configured: Event<"Configured", (configurerId: number) -> (), number>
end

declare class Prosthetic extends PilotObject
	ClassName: "Prosthetic"

	function Configure(self, properties: {
		Limb: string?,
	})

	Limb: string

	Configured: Event<"Configured", (configurerId: number) -> (), number>
end

declare class RoundWedge2 extends PilotObject
	ClassName: "RoundWedge2"
end

declare class Propeller extends PilotObject
	ClassName: "Propeller"

	Loop: Event<"Loop", (deltaTime: number) -> (), number>
end

declare class Spotlight extends PilotObject
	ClassName: "Spotlight"

	function SetColor(self, color: Color3)
end

declare class Oil extends PilotObject
	ClassName: "Oil"
end

declare class Stanlium extends PilotObject
	ClassName: "Stanlium"
end

declare class Uranium extends PilotObject
	ClassName: "Uranium"
end

declare class Switch extends PilotObject
	ClassName: "Switch"

	function Configure(self, properties: {
		SwitchValue: boolean?,
	})

	SwitchValue: boolean

	OnClick: Event<"OnClick", (clickerId: number) -> (), number>
	Configured: Event<"Configured", (configurerId: number) -> (), number>
end

declare class Hatch extends Switch
	ClassName: "Hatch"
end

declare class Valve extends Switch
	ClassName: "Valve"
end

declare class Handle extends PilotObject
	ClassName: "Handle"

	function Configure(self, properties: {
		TriggerMode: number?,
		Swing: number?,
		ToolName: string?,
	})

	TriggerMode: number
	Swing: number
	ToolName: string
end

declare class RegionCloaker extends PilotObject
	ClassName: "RegionCloaker"
end

declare class Wood extends PilotObject
	ClassName: "Wood"
end

declare class Snow extends PilotObject
	ClassName: "Snow"
end

declare class BallastTank extends PilotObject
	ClassName: "BallastTank"

	function Configure(self, properties: {
		Buoyancy: number?,
	})

	Buoyancy: number

	Loop: Event<"Loop", (deltaTime: number) -> (), number>
end

declare class HyperDrive extends PilotObject
	ClassName: "HyperDrive"

	function GetRequiredPower(self)

	function Configure(self, properties: {
		Coordinates: Coordinate?,
	})

	Coordinates: Coordinate

	Triggered: Event<"Triggered", (otherPart: PilotObject) -> (), PilotObject>
	Configured: Event<"Configured", (configurerId: number) -> (), number>
end

declare class Helium extends PilotObject
	ClassName: "Helium"
end

declare class Tile extends PilotObject
	ClassName: "Tile"
end

declare class Plasma extends PilotObject
	ClassName: "Plasma"
end

declare class TriggerSwitch extends Switch
	ClassName: "TriggerSwitch"
end

declare class SolarPanel extends PilotObject
	ClassName: "SolarPanel"

	Loop: Event<"Loop", (deltaTime: number) -> (), number>
end

declare class Boombox extends PilotObject
	ClassName: "Boombox"

	function Configure(self, properties: {
		Audio: number?,
	})

	Audio: number

	OnClick: Event<"OnClick", (clickerId: number) -> (), number>
	Loop: Event<"Loop", (deltaTime: number) -> (), number>
	Triggered: Event<"Triggered", (otherPart: PilotObject) -> (), PilotObject>
end

declare class Keyboard extends PilotObject
	ClassName: "Keyboard"

	function SimulateTextInput(self, input: string?, player: string)
	function SimulateKeyPress(self, key: string?, player: string)
	function SimulateUserInput(self, ...: any): ...any

	UserInput: Event<"UserInput", (inputObject: InputObject, userId: number) -> (), InputObject, number>
	TextInputted: Event<"TextInputted", (text: string, player: string) -> (), string, string>
	KeyPressed: Event<"KeyPressed", (userId: number, keyName: string) -> (), number, string>
end

declare class NuclearWaste extends PilotObject
	ClassName: "NuclearWaste"
end

declare class CombustionTurbine extends PilotObject
	ClassName: "CombustionTurbine"

	Loop: Event<"Loop", (deltaTime: number) -> (), number>
end

declare class Igniter extends PilotObject
	ClassName: "Igniter"

	Triggered: Event<"Triggered", (otherPart: PilotObject) -> (), PilotObject>
end

declare class FireWood extends PilotObject
	ClassName: "FireWood"
end

declare class ContainerObject extends PilotObject
	function GetAmount(self): number
	function GetResourceAmount(self): number
	function GetResource(self): string | "nil"

	ContainerChanged: Event<"ContainerChanged", (resourceType: "Solid" | "Fluid" | "Power", resourceAmount: number) -> (), "Solid" | "Fluid" | "Power", number>
end

declare class Bin extends ContainerObject
	ClassName: "Bin"

	function Configure(self, properties: {
		CanBeCraftedFrom: boolean?,
		Resource: string?,
	})

	CanBeCraftedFrom: boolean
	Resource: string

	OnClick: Event<"OnClick", (clickerId: number) -> (), number>
end

declare class Battery extends ContainerObject
	ClassName: "Battery"
end

declare class PowerCell extends ContainerObject
	ClassName: "PowerCell"
end

declare class Tank extends ContainerObject
	ClassName: "Tank"

	function Configure(self, properties: {
		CanBeCraftedFrom: boolean?,
		Resource: string?,
	})

	CanBeCraftedFrom: boolean
	Resource: string

	OnClick: Event<"OnClick", (clickerId: number) -> (), number>
end

declare class Silicon extends PilotObject
	ClassName: "Silicon"
end

declare class SpawnPoint extends PilotObject
	ClassName: "SpawnPoint"
end